// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mustache_hub_core/mustache_hub_core.dart';
// import 'package:mustachehub/create/data/adapters/token_identifier_flatmap_adapter.dart';
// import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart'; 
// import 'package:mustachehub/create/presenter/state/sugestion_state.dart';
// import 'package:mustachex/mustache.dart';

// class SugestionCubit extends Cubit<SugestionState> {
  // final TokenIdentifierFlatMapAdapter _tokenIdentifierFlatMapAdapter;
//   final TokenIdentifierTextDisplayAdapter _tokenIdentifierTextDisplayAdapter;

//   SugestionCubit({
//     required TokenIdentifierFlatMapAdapter tokenIdentifierFlatMapAdapter,
//     required TokenIdentifierTextDisplayAdapter
//         tokenIdentifierTextDisplayAdapter,
//   })  : _tokenIdentifierFlatMapAdapter = tokenIdentifierFlatMapAdapter,
//         _tokenIdentifierTextDisplayAdapter = tokenIdentifierTextDisplayAdapter,
//         super(SugestionState.withOnlyFlatMapCache(
//             flatMap: {}, availibleVariablesString: ''));

//   void setFlatMap({
//     required final List<TextPipe> textPipes,
//     required final List<BooleanPipe> booleanPipes,
//     required final List<ModelPipe> modelPipes,
//   }) {
//     // Todo(igor): put isolated in another thread

//     final allVariables = _tokenIdentifierFlatMapAdapter.toFlatMap(
//       textPipes: textPipes,
//       booleanPipes: booleanPipes,
//       modelPipes: modelPipes,
//     );

//     // Todo(igor): put isolated in another thread
//     final availibleVariablesString =
//         _tokenIdentifierTextDisplayAdapter.toDisplayText(
//       textPipes: textPipes,
//       booleanPipes: booleanPipes,
//       modelPipes: modelPipes,
//       targetIdentifiersName: [
//         ...textPipes.map((e) => e.mustacheName),
//         ...booleanPipes.map((e) => e.mustacheName),
//         ...modelPipes.map((e) => e.mustacheName),
//       ],
//     );

//     emit(SugestionState.withOnlyFlatMapCache(
//       flatMap: allVariables,
//       availibleVariablesString: availibleVariablesString,
//     ));
//   }

//   Future<void> setSuggestionsFromCurrentCursorIndex({
//     required int cursorIndex,
//     required List<Token> tokens,
//     required final List<TextPipe> textPipes,
//     required final List<BooleanPipe> booleanPipes,
//     required final List<ModelPipe> modelPipes,
//   }) async {
//     // Todo(igor): put isolated in another thread
//     final Set<TokenIdentifier> identifiers = {};

//     final validTokens = tokens.where(isIdentifierOrSirgil);

//     final Map<String, TokenIdentifier> flatMap = state.flatMap;

//     for (final pipe in textPipes) {
//       identifiers.add(TokenIdentifier.text(name: pipe.mustacheName));
//     }
//     for (final pipe in booleanPipes) {
//       identifiers.add(TokenIdentifier.boolean(name: pipe.mustacheName));
//     }
//     for (final pipe in modelPipes) {
//       final modelTokenIdentifier = flatMap[pipe.mustacheName];
//       if (modelTokenIdentifier != null) {
//         identifiers.add(modelTokenIdentifier);
//       }
//     }

//     final Map<ModelTokenIdentifier, int> modelOcrrBeforeCursor = {};

//     Token? lastToken;
//     for (final token in validTokens) {
//       // We don't want to see tokens that
//       // are before the cursor of the user
//       if (token.start >= cursorIndex) {
//         lastToken = token;
//         break;
//       }

//       final TokenIdentifier? identifier = flatMap[token.value];
//       if (identifier == null) {
//         lastToken = token;
//         continue;
//       }
//       if (identifier is! ModelTokenIdentifier) {
//         lastToken = token;
//         continue;
//       }

//       if (lastToken == null) {
//         lastToken = token;
//         continue;
//       }

//       final identifierOccourences = modelOcrrBeforeCursor[identifier] ?? 0;

//       final isLastTokenSigil = lastToken.type == TokenType.sigil;
//       if (isLastTokenSigil == false) {
//         lastToken = token;
//         continue;
//       }

//       final isLastTokenOpenSigil =
//           lastToken.value == '^' || lastToken.value == '#';
//       final isLastTokenCloseSigil = !isLastTokenOpenSigil;

//       if (isLastTokenOpenSigil) {
//         modelOcrrBeforeCursor.addAll({
//           identifier: identifierOccourences + 1,
//         });
//       } else if (isLastTokenCloseSigil) {
//         if (identifierOccourences > 0) {
//           modelOcrrBeforeCursor.addAll({
//             identifier: identifierOccourences - 1,
//           });
//         }
//       }

//       lastToken = token;
//     }

//     for (final entry in modelOcrrBeforeCursor.entries) {
//       final key = entry.key;

//       if (entry.value > 0) {
//         identifiers.add(key);
//         for (final textName in key.textsNames) {
//           final identifier = flatMap[textName];
//           identifiers.add(identifier!);
//         }

//         for (final booleanName in key.booleanNames) {
//           final identifier = flatMap[booleanName];
//           identifiers.add(identifier!);
//         }

//         for (final subModelName in key.subModelsNames) {
//           final identifier = flatMap[subModelName];
//           identifiers.add(identifier!);
//         }
//       }
//     }

//     final availibleVariablesString =
//         _tokenIdentifierTextDisplayAdapter.toDisplayText(
//       textPipes: textPipes,
//       booleanPipes: booleanPipes,
//       modelPipes: modelPipes,
//       targetIdentifiersName: identifiers.map((e) => e.name).toList(),
//     );

//     emit(SugestionState.withSugestionAndFlatMapCache(
//       flatMap: flatMap,
//       availibleVariablesString: availibleVariablesString,
//       tokenIdentifiers: identifiers,
//     ));
//   }
// }

// bool isIdentifierOrSirgil(Token e) =>
//     e.type == TokenType.identifier || e.type == TokenType.sigil;
