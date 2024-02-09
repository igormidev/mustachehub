import 'package:flutter_bloc/flutter_bloc.dart';

class TabControllCubit extends Cubit<int> {
  TabControllCubit() : super(0);

  void changeTab(int index) => emit(index);
}
