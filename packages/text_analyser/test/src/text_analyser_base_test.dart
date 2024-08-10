import 'dart:developer';

import 'package:test/test.dart';
import 'package:text_analyser/text_analyser.dart';

import 'package:collection/collection.dart';

void main() {
  final tester = TextAnalyserBase();
  test('Should return expected value [BUG FIX]', () {
    final source = '''The {{#person}}

asds {{name}}
{{/person}}''';

    final response = tester.getMatchClusters(
      source,
      0,
      {
        'person': ModelParentMapper(
          parrentName: null,
          name: 'person',
          textsNames: ['name'],
          booleanNames: [],
          subModelsNames: [],
        ),
        'name': TextParentMapper(name: 'name', parrentName: 'person')
      },
    );

    final text = response?.segmentsStates.map((e) => e.segmentText).toList();
    final first = text?.removeEmpty;
    final second = [
      'The ',
      '{{#person}}',
      '''

asds ''',
      '{{name}}',
      '''
''',
      '{{/person}}',
    ].removeEmpty;
    final isTheSame = const ListEquality().equals(
      first,
      second,
    );
    expect(isTheSame, true);

    print(response);
  });

  test('Should enter model variables as expected', () {
    final source = '''Hello, Im {{#father}}{{fatherName}}.
{{^hasChild}}I dont have child yet...{{/hasChild}}{{#hasChild}}I have kids!
They are:
{{#children}}{{fatherChildName}}. The name of his friends is {{#childFriends}}{{childFriendName}}{{/childFriends}}{{/children}}
{{/hasChild}}
{{/father}}''';

    final response = tester.getMatchClusters(
      source,
      0,
      {
        'father': VariableScopeParentMapper.model(
            parrentName: null,
            name: 'father',
            textsNames: ['fatherName'],
            booleanNames: ['hasChild'],
            subModelsNames: ['children']),
        'fatherName': VariableScopeParentMapper.text(
            parrentName: 'father', name: 'fatherName'),
        'hasChild': VariableScopeParentMapper.boolean(
            parrentName: 'father', name: 'hasChild'),
        'children': VariableScopeParentMapper.model(
            parrentName: 'father',
            name: 'children',
            textsNames: ['fatherChildName'],
            booleanNames: [],
            subModelsNames: ['childFriends']),
        'fatherChildName': VariableScopeParentMapper.text(
            parrentName: 'children', name: 'fatherChildName'),
        'childFriends': VariableScopeParentMapper.model(
            parrentName: 'children',
            name: 'childFriends',
            textsNames: ['childFriendName'],
            booleanNames: [],
            subModelsNames: []),
        'childFriendName': VariableScopeParentMapper.text(
            parrentName: 'childFriends', name: 'childFriendName'),
      },
    );

    log(response.toString());

    expect(
        response.toString(),
        equals(
            '''AnalysedResponse(choosableVariablesInCurrentScope: {VariableImplementation.model(modelTokenIdentifier: TokenIdentifier.model(parrentName: null, name: father, textsNames: [fatherName], booleanNames: [hasChild], subModelsNames: [children]))}, segmentsStates: [AnalysedSegmentStatus.text(offset: TextOffset(start: 0, end: 10), segmentText: Hello, Im ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 13, end: 19), segmentText: {{#father}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 21, end: 21), segmentText: ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 23, end: 33), segmentText: {{fatherName}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 35, end: 37), segmentText: .
), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 40, end: 48), segmentText: {{^hasChild}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 50, end: 74), segmentText: I dont have child yet...), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 77, end: 85), segmentText: {{/hasChild}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 87, end: 87), segmentText: ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 90, end: 98), segmentText: {{#hasChild}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 100, end: 123), segmentText: I have kids!
They are:
), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 126, end: 134), segmentText: {{#children}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 136, end: 136), segmentText: ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 138, end: 153), segmentText: {{fatherChildName}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 155, end: 184), segmentText: . The name of his friends is ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 187, end: 199), segmentText: {{#childFriends}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 201, end: 201), segmentText: ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 203, end: 218), segmentText: {{childFriendName}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 220, end: 220), segmentText: ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 223, end: 235), segmentText: {{/childFriends}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 237, end: 237), segmentText: ), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 240, end: 248), segmentText: {{/children}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 250, end: 251), segmentText: 
), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 254, end: 262), segmentText: {{/hasChild}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 264, end: 265), segmentText: 
), AnalysedSegmentStatus.validDeclaration(offset: TextOffset(start: 268, end: 274), segmentText: {{/father}}), AnalysedSegmentStatus.text(offset: TextOffset(start: 276, end: 276), segmentText: )])'''));
  });
}

extension on List<String> {
  List<String> get removeEmpty =>
      where((element) => !element.contains('\n') && element != '').toList();
}
