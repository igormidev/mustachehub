import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/model_widgets/model_pageview_builder.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/widgets/headers/base_sliver_pipe_creation_header.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/boolean_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/text_variable_creation_card.dart';

class VariablesCreationTab extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  VariablesCreationTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<VariablesCubit>();
    final state = bloc.state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            const PipeCreationHeader(
              headerTitle: 'Text variables',
              subtitleSubtitle:
                  'A text variable that the user will need to fill in.',
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 4)),
            TextVariablesCreationWidget(
              formKey: formKey,
              initialList: state.textPipes,
              retriveCreatedPipes: (pipes) {
                bloc.updateTextVariables(textPipes: pipes);
              },
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Divider(),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 4)),
            const PipeCreationHeader(
              headerTitle: 'Boolean variables (True or false)',
              subtitleSubtitle:
                  'Boolean variables are characterized by being able '
                  'to assume a value of true or false. You can use this '
                  'conditional to make logic in the construction of your text.',
            ),
            BooleanVariablesCreationWidget(
              formKey: formKey,
              initialList: state.booleanPipes,
              retriveCreatedPipes: (pipes) {
                bloc.updateBooleanVariables(booleanPipes: pipes);
              },
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Divider(),
              ),
            ),
            const PipeCreationHeader(
              headerTitle: 'List of models',
              subtitleSubtitle:
                  'A list of templates that the user will need to fill '
                  'in each template field. A model can be like. For '
                  'example: a model of a person with variables name, age, height, etc...',
            ),
            ModelPageviewBuilder(
              formKey: formKey,
              initialList: state.modelPipes,
              retriveCreatedPipes: (pipes) {
                bloc.updateModelVariables(modelPipes: pipes);
              },
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
