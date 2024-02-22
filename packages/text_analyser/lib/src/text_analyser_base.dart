// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachex/mustachex.dart';
import 'package:text_analyser/src/adapters/token_identifier_flatmap_adapter.dart';
import 'package:text_analyser/src/models/analysed_segment.dart';
import 'package:text_analyser/src/models/token_identifier.dart';
import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:enchanted_collection/enchanted_collection.dart';

class TextAnalyserBase {
  final TokenIdentifierFlatMapAdapter tokenIdentifierFlatMapAdapter;
  final ExpectedPayload expectedPayload;
  const TextAnalyserBase({
    required this.expectedPayload,
    required this.tokenIdentifierFlatMapAdapter,
  });

  List<TextSegment> getMatchClusters(
    String input,
    int indexAtText,
  ) {
    final isIndexInText = indexAtText >= 0 && indexAtText < input.length;

    final List<TextSegment> textSegments = <TextSegment>[];

    final Map<String, TokenIdentifier> flatMap;
    flatMap = tokenIdentifierFlatMapAdapter.toFlatMap(
      textPipes: expectedPayload.textPipes,
      booleanPipes: expectedPayload.booleanPipes,
      modelPipes: expectedPayload.modelPipes,
    );

    final List<IdentifierDeclaration> identifiers =
        getIdentifiers(input, flatMap);

    final RegExp regExp = RegExp(r'{{[#\/]?(?<name>[a-zA-Z]+?)}}');
    // final RegExp regExp = RegExp(r'{{#?\/?(?<identifier>[a-zA-Z]+?)}}');
    final List<AnalysedSegment> segments = [];

    input.forEachNamedGroup(
      regExp,
      onMatch: (group) {
        final TokenIdentifier? tokenIdentifier = flatMap[group.content];

        if (tokenIdentifier == null) {
          return segments.add(AnalysedSegment.declarationOfUncatalogedVariable(
            content: group.content,
          ));
        }

        final bool isOpenDelimiter = group.fullMatchText.startsWith('{{#');
        final bool isCloseDelimiter = group.fullMatchText.startsWith('{{/');
        final bool hasDelimiter = isOpenDelimiter || isCloseDelimiter;
        final bool isModel = tokenIdentifier.maybeMap(
          model: (_) => true,
          orElse: () => false,
        );

        /// Only models can have delimiters indicators
        if (hasDelimiter && isModel == false) {
          final seg = AnalysedSegment.nonModelVariableWithOpenOrCloseDelimmiter(
            content: group.content,
          );
          return segments.add(seg);
        }

        if (isModel && hasDelimiter == false) {
          return segments.add(AnalysedSegment.invalidMapDeclaration(
            content: group.content,
          ));
        }

        return segments.add(AnalysedSegment.validDeclaration(
          content: group.content,
        ));
      },
      onNonMatch: (text) {
        segments.add(AnalysedSegment.text(content: text));
      },
    );

    final List<IdentifierDeclaration> notCatalogedDeclarations = [];

    final List<IdentifierDeclaration> validDeclaration = [];

    final List<IdentifierScope> validScopes = [];

    final List<IdentifierDeclaration> mapWithoutDelimiterDeclaration = [];

    /// Declarations that have an open delimiter but no close delimiter
    final List<IdentifierDeclaration> invalidDeclarations = [];

    for (final IdentifierDeclaration identifierDeclaration in identifiers) {
      if (identifierDeclaration.isCatalogedIdentifier == false) {
        notCatalogedDeclarations.add(identifierDeclaration);
        continue;
      }
    }

    return textSegments;
  }

  List<IdentifierDeclaration> getIdentifiers(
    String source,
    Map<String, TokenIdentifier> flatMapVariables,
  ) {
    final List<IdentifierDeclaration> identifiers = <IdentifierDeclaration>[];
    final RegExp regExp = RegExp(r'{{#?\/?(?<identifier>[a-zA-Z]+?)}}');
    source.forEachNamedGroup(
      regExp,
      onMatch: (FindedGroup group) {
        final TokenIdentifier? tokenIdentifier =
            flatMapVariables[group.content];

        final bool isCatalogedIdentifier = tokenIdentifier != null;

        if (group.name == 'identifier') {
          identifiers.add(IdentifierDeclaration(
            start: group.globalStart,
            end: group.globalEnd,
            identifier: group.content,
            isCatalogedIdentifier: isCatalogedIdentifier,
            tokenIdentifier: tokenIdentifier,
            fullDeclaration:
                source.substring(group.globalStart, group.globalEnd),
          ));
        }
      },
    );

    return identifiers;
  }
}

class IdentifierScope {
  final IdentifierDeclaration startDeclaration;
  final IdentifierDeclaration endDeclaration;
  final String identifier;
  const IdentifierScope({
    required this.startDeclaration,
    required this.endDeclaration,
    required this.identifier,
  });
}

class IdentifierDeclaration {
  final int start;
  final int end;
  final String identifier;
  final String fullDeclaration;
  final bool isCatalogedIdentifier;
  final TokenIdentifier? tokenIdentifier;

  const IdentifierDeclaration({
    required this.start,
    required this.end,
    required this.identifier,
    required this.fullDeclaration,
    required this.isCatalogedIdentifier,
    required this.tokenIdentifier,
  });
}

class TextSegment {
  final int start;
  final int end;
  const TextSegment({
    required this.start,
    required this.end,
  });
}
