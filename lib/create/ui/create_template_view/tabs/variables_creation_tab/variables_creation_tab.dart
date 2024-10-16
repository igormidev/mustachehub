import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/states/variables_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/choice_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/model_pipe_formfield.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/widgets/headers/base_sliver_pipe_creation_header.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/boolean_variable_creation_card.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/implementations/text_variable_creation_card.dart';

class VariablesCreationTab extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  VariablesCreationTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<VariablesCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            const PipeCreationHeader(
              headerTitle: 'Text variables',
              subtitleSubtitle:
                  'Text variables are the most basic type of variables. '
                  'They are used to dynamically insert a text into the template.',
              selectedSection: ETutorialSection.textUseCaseExample,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 4)),
            BlocBuilder<VariablesCubit, VariablesState>(
              builder: (context, state) {
                return TextVariablesCreationWidget(
                  formKey: formKey,
                  initialList: state.textPipes,
                  retriveCreatedPipes: (pipes) {
                    bloc.updateTextVariables(textPipes: pipes);
                  },
                );
              },
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Divider(),
              ),
            ),
            const PipeCreationHeader(
              headerTitle: 'Choice variables',
              subtitleSubtitle:
                  'Choise variables are a list of enumerated choices. '
                  'Who uses the template will have to choose one of the options '
                  'and you can use that choise to make conditinals ou display the choice text.',
              selectedSection: ETutorialSection.choiceCreatingVariable,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 4)),
            BlocBuilder<VariablesCubit, VariablesState>(
              builder: (context, state) {
                return ChoiceVariableCreationCard(
                  formKey: formKey,
                  initialList: state.choicePipes,
                  retriveCreatedPipes: (pipes) {
                    bloc.updateChoiceVariables(choicePipes: pipes);
                  },
                );
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
              headerTitle: 'Conditional variables (True or false)',
              subtitleSubtitle:
                  'Conditional variables are characterized by being able '
                  'to assume a value of true or false. You can use this '
                  'conditional to make logic in the construction of your text.',
              selectedSection: ETutorialSection.conditionalUseCaseExample,
            ),
            BlocBuilder<VariablesCubit, VariablesState>(
              builder: (context, state) {
                return BooleanVariablesCreationWidget(
                  formKey: formKey,
                  initialList: state.booleanPipes,
                  retriveCreatedPipes: (pipes) {
                    bloc.updateBooleanVariables(booleanPipes: pipes);
                  },
                );
              },
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Divider(),
              ),
            ),
            const PipeCreationHeader(
              headerTitle: 'List of items variables',
              subtitleSubtitle:
                  'A list of items. Each item can have any type of variable in it. A item can be, for '
                  'example: a item of a person with variables name, age, height, etc...',
              selectedSection: ETutorialSection.listOfItemUseCaseExample,
            ),
            BlocBuilder<VariablesCubit, VariablesState>(
              builder: (context, state) {
                return ModelVariableCreationWidget(
                  formKey: formKey,
                  initialList: state.modelPipes,
                  retriveCreatedPipes: (pipes) {
                    bloc.updateModelVariables(modelPipes: pipes);
                  },
                );
              },
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
          ],
        ),
      ),
    );
  }
}
