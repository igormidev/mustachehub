// import 'package:flutter/material.dart';
// import 'package:mustache_hub_core/mustache_hub_core.dart';
// import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/base_variable_creation_card.dart';
// import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/boolean_variable_creation_card.dart';
// import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/forms/pipe_formfields/base_pipe_formfield.dart';
// import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/text_variable_creation_card.dart';

// import '../../implementations/model_variable_creation_card.dart';

// class ModelPipeFormfield extends StatelessWidget {
//   final TextEditingController nameEC;
//   final TextEditingController descriptionEC;
//   final void Function() onDelete;
//   final void Function(
//     List<TextPipe> textPipes,
//     List<BooleanPipe> booleanPipes,
//     List<ModelPipe> modelPipes,
//   ) onSave;

//   final GlobalKey<FormState> formKey;
//   final ModelPipe pipe;

//   ModelPipeFormfield({
//     super.key,
//     required this.nameEC,
//     required this.descriptionEC,
//     required this.onDelete,
//     required this.onSave,
//     required this.formKey,
//     required this.pipe,
//   })  : textPipes = [...pipe.textPipes],
//         booleanPipes = [...pipe.booleanPipes],
//         modelPipes = [...pipe.modelPipes];

//   final List<TextPipe> textPipes;
//   final List<BooleanPipe> booleanPipes;
//   final List<ModelPipe> modelPipes;

//   @override
//   Widget build(BuildContext context) {
//     return PipeFormfield(
//       formKey: formKey,
//       nameEC: nameEC,
//       descriptionEC: descriptionEC,
//       onDelete: onDelete,
//       onSave: () => onSave(textPipes, booleanPipes, modelPipes),
//       pipe: pipe,
//       children: [
//         Text(
//           'Model variables:',
//           style: Theme.of(context).textTheme.headlineMedium,
//         ),
//         Text(
//           'Fill bellow the variables that will be used in the model',
//           style: Theme.of(context).textTheme.bodyMedium,
//         ),
//         const Padding(
//           padding: EdgeInsets.only(top: 8),
//           child: Divider(),
//         ),
//         Text(
//           'Add texts variables in model:',
//           style: Theme.of(context).textTheme.titleMedium,
//         ),
//         TextVariablesCreationWidget(
//           type: ListType.listviewBuilder,
//           formKey: formKey,
//           initialList: textPipes,
//           retriveCreatedPipes: (pipes) {
//             textPipes.clear();
//             textPipes.addAll(pipes);
//           },
//         ),
//         const SizedBox(height: 6),
//         const Divider(),
//         Text(
//           'Add boolean variables in model:',
//           style: Theme.of(context).textTheme.titleMedium,
//         ),
//         BooleanVariablesCreationWidget(
//           type: ListType.listviewBuilder,
//           formKey: formKey,
//           initialList: booleanPipes,
//           retriveCreatedPipes: (pipes) {
//             booleanPipes.clear();
//             booleanPipes.addAll(pipes);
//           },
//         ),
//         const SizedBox(height: 6),
//         const Divider(),
//         Text(
//           'Add other list of models variable in model:',
//           style: Theme.of(context).textTheme.titleMedium,
//         ),
//         ModelVariablesCreationWidget(
//           type: ListType.listviewBuilder,
//           formKey: formKey,
//           initialList: modelPipes,
//           retriveCreatedPipes: (pipes) {
//             modelPipes.clear();
//             modelPipes.addAll(pipes);
//           },
//         ),
//       ],
//     );
//   }
// }
