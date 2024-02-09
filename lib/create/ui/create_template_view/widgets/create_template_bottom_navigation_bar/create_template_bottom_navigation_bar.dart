import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';

class CreateTemplateBottomNavigationBar extends StatelessWidget {
  const CreateTemplateBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TabControllCubit>();

    return BlocBuilder<TabControllCubit, int>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state,
          onTap: (selectedIndex) {
            bloc.changeTab(selectedIndex);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.token_outlined),
              activeIcon: Icon(Icons.token_rounded),
              label: 'Variables',
              tooltip: 'Create the variables that your mustache will have.',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              activeIcon: Icon(Icons.description),
              label: 'Content text',
              tooltip: 'Write a text that uses the mustache variables. '
                  'This text is the template that will be used to generate the texts.',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.science_outlined),
              activeIcon: Icon(Icons.science),
              label: 'Test',
              tooltip: 'Test your template.',
            ),
          ],
        );
      },
    );
  }
}
