import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/generate/presenter/cubits/displayable_content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/displayable_content_state.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/widgets/root_generator_handler/root_generator_handler.dart';

class ModelPipeForm extends StatelessWidget {
  final ContentInput output;
  final ExpectedPayload expectedPayload;
  const ModelPipeForm({
    super.key,
    required this.output,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final displayableContentCubit = context.read<DisplayableContentCubit>();
    return BlocBuilder<PayloadCubit, PayloadState>(
      buildWhen: (prev, curr) {
        final prevDtos = prev.expectedPayloadDto?.modelDtos;
        final currDtos = curr.expectedPayloadDto?.modelDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes = state.expectedPayloadDto?.modelDtos ?? <ModelPipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return BlocSelector<DisplayableContentCubit, DisplayableContentState,
            Set<String>>(
          bloc: displayableContentCubit,
          selector: (state) => state.when(
            // All variables that are used in any fields, but are
            // currently not fullfilled (that is: are with red indicators)
            listOfTexts: (spans) =>
                spans.expand((e) => e.requiredFields).toSet(),
            none: () => {},
          ),
          builder: (context, allRequiredFields) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const CustomHeader(headerTitle: 'Model variables'),
                    ...pipes.map(
                      (ModelPipeDto pipeDTO) {
                        final StructureDTONode treeNode = StructureDTONode.root(
                          data: TreeNodeGeneratePipeDtoStructureNode(
                            payloadUUID: null,
                            referenceModelDTO: pipeDTO,
                          ),
                        );

                        final otherNodes =
                            _getNodesFromStructure(treeNode.data!);
                        treeNode.addAll(otherNodes);

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: constraints.maxWidth,
                              child: TreeView.simpleTyped<
                                  TreeNodeGeneratePipeDto,
                                  TreeNode<TreeNodeGeneratePipeDto>>(
                                tree: treeNode,
                                showRootNode: true,
                                shrinkWrap: true,
                                expansionBehavior:
                                    ExpansionBehavior.scrollToLastChild,
                                indentation: const Indentation(),
                                expansionIndicatorBuilder: (
                                  BuildContext context,
                                  ITreeNode node,
                                ) {
                                  if (node.isRoot) {
                                    return PlusMinusIndicator(
                                      tree: node,
                                      alignment: Alignment.centerLeft,
                                      color: node.isExpanded
                                          ? Theme.of(context)
                                              .colorScheme
                                              .tertiary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary,
                                    );
                                  }

                                  return ChevronIndicator.rightDown(
                                    tree: node,
                                    alignment: Alignment.centerLeft,
                                    color: node.isExpanded
                                        ? Theme.of(context).colorScheme.tertiary
                                        : Theme.of(context).colorScheme.primary,
                                  );
                                },
                                builder: (
                                  BuildContext context,
                                  TreeNode<TreeNodeGeneratePipeDto> node,
                                ) {
                                  return RootGeneratorHandler(
                                    allRequiredFields: allRequiredFields,
                                    node: node,
                                    output: output,
                                    expectedPayload: expectedPayload,
                                    rootModelDTO: pipeDTO,
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}

typedef StructureDTONode = TreeNode<TreeNodeGeneratePipeDtoStructureNode>;
typedef TextDTONode = TreeNode<TreeNodeGeneratePipeDtoPipeText>;
typedef BooleanDTONode = TreeNode<TreeNodeGeneratePipeDtoPipeBoolean>;
typedef ChoiceDTONode = TreeNode<TreeNodeGeneratePipeDtoPipeChoice>;
typedef ModelDTONode = TreeNode<TreeNodeGeneratePipeDtoPipeModel>;

Iterable<Node> _getNodesFromStructure(
  TreeNodeGeneratePipeDtoStructureNode structure,
) {
  final List<Node> nodes = [];

  final List<ModelPipeDTOPayload> payloads =
      structure.referenceModelDTO.payloadValue;

  int index = 0;

  for (final ModelPipeDTOPayload value in payloads) {
    index++;

    final modelNode = ModelDTONode(
      key: value.uuid,
      data: TreeNodeGeneratePipeDtoPipeModel(
        payloadUUID: value.uuid,
        pipeDTO: structure.referenceModelDTO,
        index: index,
        payload: value,
      ),
    );

    modelNode.addAll(_getNodesFromModel(modelNode.data!));
    nodes.add(modelNode);
  }

  return nodes;
}

Iterable<Node> _getNodesFromModel(
  TreeNodeGeneratePipeDtoPipeModel modelDTO,
) {
  final List<Node> nodes = [];

  for (final TextPipeDto text in modelDTO.payload.texts) {
    nodes.add(TextDTONode(
      key: text.uuid,
      data: TreeNodeGeneratePipeDtoPipeText(
        pipeDTO: text,
        payloadUUID: modelDTO.payload.uuid,
      ),
    ));
  }

  for (final BooleanPipeDto boolean in modelDTO.payload.booleans) {
    nodes.add(BooleanDTONode(
      key: boolean.uuid,
      data: TreeNodeGeneratePipeDtoPipeBoolean(
        pipeDTO: boolean,
        payloadUUID: modelDTO.payload.uuid,
      ),
    ));
  }

  for (final ChoicePipeDto choice in modelDTO.payload.choices) {
    nodes.add(ChoiceDTONode(
      key: choice.uuid,
      data: TreeNodeGeneratePipeDtoPipeChoice(
        pipeDTO: choice,
        payloadUUID: modelDTO.payload.uuid,
      ),
    ));
  }

  for (final ModelPipeDto model in modelDTO.payload.subModels) {
    final structureNode = StructureDTONode(
      key: model.uuid,
      data: TreeNodeGeneratePipeDtoStructureNode(
        referenceModelDTO: model,
        payloadUUID: modelDTO.payload.uuid,
      ),
    );

    final subModels = _getNodesFromStructure(structureNode.data!);
    structureNode.addAll(subModels);
    nodes.add(structureNode);
  }

  return nodes;
}
