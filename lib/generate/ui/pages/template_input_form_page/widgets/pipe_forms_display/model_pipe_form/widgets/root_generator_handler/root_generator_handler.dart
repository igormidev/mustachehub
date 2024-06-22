import 'package:animated_tree_view/tree_view/tree_node.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/widgets/generate_node_builders/boolean_generate_node_builder.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/widgets/generate_node_builders/model_generate_node_builder.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/widgets/generate_node_builders/structure_generate_node_builder.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/widgets/generate_node_builders/text_generate_node_builder.dart';

class RootGeneratorHandler extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  final TreeNode<TreeNodeGeneratePipeDto> node;
  final ModelPipeDto rootModelDTO;
  const RootGeneratorHandler({
    super.key,
    required this.node,
    required this.content,
    required this.expectedPayload,
    required this.rootModelDTO,
  });

  @override
  Widget build(BuildContext context) {
    final root = node.data!;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: root.map(
        structureNode: (TreeNodeGeneratePipeDtoStructureNode value) {
          return StructureGenerateNodeBuilder(
            rootModelDTO: rootModelDTO,
            content: content,
            expectedPayload: expectedPayload,
            referenceModelDTO: value.referenceModelDTO,
          );
        },
        textNode: (TreeNodeGeneratePipeDtoPipeText value) {
          return TextGenerateNodeBuilder(
            rootModelDTO: rootModelDTO,
            content: content,
            expectedPayload: expectedPayload,
            textDTONode: value,
          );
        },
        boolean: (TreeNodeGeneratePipeDtoPipeBoolean value) {
          return BooleanGenerateNodeBuilder(
            rootModelDTO: rootModelDTO,
            content: content,
            expectedPayload: expectedPayload,
            textDTONode: value,
          );
        },
        model: (TreeNodeGeneratePipeDtoPipeModel value) {
          return ModelGenerateNodeBuilder(
            rootModelDTO: rootModelDTO,
            content: content,
            expectedPayload: expectedPayload,
            modelDTONode: value,
          );
        },
      ),
    );
  }
}
