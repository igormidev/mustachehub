import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/add_new_dotted_button.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/widgets/boolean_pipe_switch_form_field.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/widgets/text_pipe_form_field.dart';

class ModelPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const ModelPipeForm({
    super.key,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();

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

        return LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHeader(headerTitle: 'Model variables payload'),
                const SizedBox(height: 32),
                ...pipes.map(
                  (ModelPipeDto pipeDTO) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                            ),
                            child: Text(
                              pipeDTO.pipe.name,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ...pipeDTO.items
                              .map((ModelPipeDTOPayload modelPipeDTOPayload) {
                            final treeNode =
                                TreeNode<PipeDTO>.root(data: pipeDTO);
                            treeNode
                                .addAll(_getModelPipes(modelPipeDTOPayload));

                            return SizedBox(
                              width: constraints.maxWidth,
                              child: TreeView.simpleTyped<PipeDTO,
                                  TreeNode<PipeDTO>>(
                                tree: treeNode,
                                showRootNode: true,
                                shrinkWrap: true,
                                expansionBehavior:
                                    ExpansionBehavior.scrollToLastChild,
                                indentation: const Indentation(),
                                expansionIndicatorBuilder: (context, node) {
                                  if (node.isRoot) {
                                    return PlusMinusIndicator(
                                      tree: node,
                                      alignment: Alignment.centerLeft,
                                      color: Colors.grey[700],
                                    );
                                  }

                                  return ChevronIndicator.rightDown(
                                    tree: node,
                                    alignment: Alignment.centerLeft,
                                    color: Colors.grey[700],
                                  );
                                },
                                builder: (context, TreeNode<PipeDTO> node) {
                                  final dto = node.data;
                                  final String title = switch (dto) {
                                    null => 'N/A',
                                    TextPipeDto() => dto.pipe.name,
                                    BooleanPipeDto() => dto.pipe.name,
                                    ModelPipeDto() => dto.pipe.name,
                                  };
                                  final String subtitle = switch (dto) {
                                    null => 'N/A',
                                    TextPipeDto() => 'Text',
                                    BooleanPipeDto() => 'Boolean',
                                    ModelPipeDto() => 'Model',
                                  };
                                  final IconData icon = switch (dto) {
                                    null => Icons.radio_button_unchecked_sharp,
                                    TextPipeDto() => Icons.text_fields,
                                    BooleanPipeDto() =>
                                      Icons.compare_arrows_rounded,
                                    ModelPipeDto() => Icons.folder,
                                  };
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: switch (dto) {
                                      null => throw UnimplementedError(),
                                      TextPipeDto() => Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4,
                                            bottom: 4,
                                          ),
                                          child: TextPipeFormField(
                                            pipeDto: dto,
                                            onChangedCallback:
                                                (String? text) async {
                                              if (text == null) return;

                                              final ModelPipeDto? editedPipe =
                                                  pipeDTO.deepEdit<TextPipe,
                                                      String>(
                                                modelId: pipeDTO.pipe.pipeId,
                                                id: pipeDTO.pipe.pipeId,
                                                mapFunc: (
                                                  PipeDTO<TextPipe, String>
                                                      pipe,
                                                ) {
                                                  return pipe.copyWith(
                                                    payloadValue: text,
                                                  );
                                                },
                                              );
                                              if (editedPipe == null) return;

                                              await bloc.addModelPayloadValue(
                                                content: content,
                                                expectedPayload:
                                                    expectedPayload,
                                                newPipeDTO: editedPipe,
                                                // pipe: pipeDTO.pipe,
                                                // value: editedPipe.payloadValue,
                                              );
                                            },
                                          ),
                                        ),
                                      BooleanPipeDto() => Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4,
                                            bottom: 4,
                                          ),
                                          child: BooleanPipeSwitchFormField(
                                            pipeDto: dto,
                                            onChangedCallback: (value) async {
                                              final ModelPipeDto? editedPipe =
                                                  pipeDTO.deepEdit<BooleanPipe,
                                                      bool>(
                                                modelId: pipeDTO.pipe.pipeId,
                                                id: pipeDTO.pipe.pipeId,
                                                mapFunc: (
                                                  PipeDTO<BooleanPipe, bool>
                                                      pipe,
                                                ) {
                                                  return pipe.copyWith(
                                                    payloadValue: value,
                                                  );
                                                },
                                              );

                                              if (editedPipe == null) return;

                                              await bloc.addModelPayloadValue(
                                                content: content,
                                                expectedPayload:
                                                    expectedPayload,
                                                newPipeDTO: editedPipe,
                                                // pipe: pipeDTO.pipe,
                                                // value: editedPipe.payloadValue,
                                              );
                                            },
                                          ),
                                        ),
                                      ModelPipeDto() => ListTile(
                                          title: Text(title),
                                          subtitle: Text(subtitle),
                                          leading: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Icon(icon),
                                          ),
                                          trailing: SizedBox(
                                            width: 100,
                                            height: 100,
                                            child: AddNewButton(
                                              onTap: () {
                                                final ModelPipeDto? editedPipe =
                                                    pipeDTO.deepEdit<ModelPipe,
                                                        ModelPipeDTOPayload>(
                                                  modelId: pipeDTO.pipe.pipeId,
                                                  id: pipeDTO.pipe.pipeId,
                                                  mapFunc: (
                                                    PipeDTO<ModelPipe,
                                                            ModelPipeDTOPayload>
                                                        pipe,
                                                  ) {
                                                    return pipe.copyWith(
                                                      items: [
                                                        ...pipe.items,
                                                        ModelPipeDTOPayload
                                                            .fromModelPipe(
                                                          pipe,
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              tooltip:
                                                  'Add new "${pipeDTO.pipe.name}" model variable',
                                            ),
                                          ),
                                        ),
                                    },
                                  );
                                },
                              ),
                            );
                          }).toList(),
                          const SizedBox(height: 8),
                          AddNewButton(
                            onTap: () {
                              bloc.addModelPayloadValue(
                                content: content,
                                expectedPayload: expectedPayload,
                                newPipeDTO: pipeDTO.copyWith(items: [
                                  ...pipeDTO.items,

                                  // Initial from the model pipe
                                  ModelPipeDTOPayload.fromModelPipe(
                                    pipeDTO,
                                  ),
                                ]),
                              );
                            },
                            tooltip: 'Add new "${pipeDTO.pipe.name}"'
                                ' model variable',
                          ),
                          const Divider(),
                        ]);
                  },
                ).toList(),
              ],
            );
          },
        );
      },
    );
  }
}

typedef TextDTONode = TreeNode<TextPipeDto>;
typedef BooleanDTONode = TreeNode<BooleanPipeDto>;
typedef ModelDTONode = TreeNode<ModelPipeDto>;

Iterable<Node> _getModelPipes(ModelPipeDTOPayload pipe) {
  final result = [
    ...pipe.texts.map((e) => TextDTONode(data: e)),
    ...pipe.booleans.map((e) => BooleanDTONode(data: e)),
    ...pipe.subModels.map((e) {
      final modelDTO = ModelDTONode(
        data: e,
      );

      final subModels = e.items.map((e) => _getModelPipes(e));

      // modelDTO.addAll(subModels.expand((element) => element));
      for (final subModel in subModels) {
        modelDTO.addAll(subModel);
      }

      return modelDTO;
    }),
  ];

  return result;
}
