import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:mustachex/mustachex.dart';

class ContentStringCubit extends HydratedCubit<ContentStringState> {
  ContentStringCubit()
      : super(const ContentStringState.normal(currentText: ''));

  void registerNormalText({
    required String newText,
  }) {
    emit(ContentStringState.normal(currentText: newText));
  }

  void registerTextWithTokens({
    required String newText,
    required List<Token> tokens,
  }) {
    emit(ContentStringState.withToken(
      currentText: newText,
      tokensInIt: tokens,
    ));
  }

  @override
  ContentStringState? fromJson(Map<String, dynamic> json) {
    return ContentStringState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ContentStringState state) {
    return state.toJson();
  }
}
