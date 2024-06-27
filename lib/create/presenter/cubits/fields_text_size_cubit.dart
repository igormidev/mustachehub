import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/create/presenter/states/fields_text_size_state.dart';

class FieldsTextSizeCubit extends HydratedCubit<FieldsTextSizeState> {
  FieldsTextSizeCubit()
      : super(const FieldsTextSizeState.normal(
          regexIdenfifierTextSize: 14,
          testStringTextSize: 16,
        ));

  void increaseSizeRegexIdentifier() {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize + 1,
      testStringTextSize: state.testStringTextSize,
    ));
  }

  void decreaseSizeRegexIdentifier() {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize - 1,
      testStringTextSize: state.testStringTextSize,
    ));
  }

  void increaseSizeTestString() {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize,
      testStringTextSize: state.testStringTextSize + 1,
    ));
  }

  void decreaseSizeTestString() {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize,
      testStringTextSize: state.testStringTextSize - 1,
    ));
  }

  @override
  FieldsTextSizeState? fromJson(Map<String, dynamic> json) {
    return FieldsTextSizeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FieldsTextSizeState state) {
    return state.toJson();
  }
}
