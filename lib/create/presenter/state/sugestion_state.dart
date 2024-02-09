import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/create/presenter/dto/token_identifier.dart';

part 'sugestion_state.freezed.dart';

@freezed
abstract class SugestionState with _$SugestionState {
  factory SugestionState.withOnlyFlatMapCache({
    required Map<String, TokenIdentifier> flatMap,
    required String availibleVariablesString,
  }) = WithOnlyFlatMapCache;

  factory SugestionState.withSugestionAndFlatMapCache({
    required Map<String, TokenIdentifier> flatMap,
    required String availibleVariablesString,
    required Set<TokenIdentifier> tokenIdentifiers,
  }) = WithSugestion;
}
