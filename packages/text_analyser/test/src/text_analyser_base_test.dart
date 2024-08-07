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
        'person': ModelTokenIdentifier(
          parrentName: null,
          name: 'person',
          textsNames: ['name'],
          booleanNames: [],
          subModelsNames: [],
        ),
        'name': TextTokenIdentifier(name: 'name', parrentName: 'person')
      },
    );

    final text = response?.segments.map((e) => e.segmentText).toList();
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
        'father': TokenIdentifier.model(
            parrentName: null,
            name: 'father',
            textsNames: ['fatherName'],
            booleanNames: ['hasChild'],
            subModelsNames: ['children']),
        'fatherName':
            TokenIdentifier.text(parrentName: 'father', name: 'fatherName'),
        'hasChild':
            TokenIdentifier.boolean(parrentName: 'father', name: 'hasChild'),
        'children': TokenIdentifier.model(
            parrentName: 'father',
            name: 'children',
            textsNames: ['fatherChildName'],
            booleanNames: [],
            subModelsNames: ['childFriends']),
        'fatherChildName': TokenIdentifier.text(
            parrentName: 'children', name: 'fatherChildName'),
        'childFriends': TokenIdentifier.model(
            parrentName: 'children',
            name: 'childFriends',
            textsNames: ['childFriendName'],
            booleanNames: [],
            subModelsNames: []),
        'childFriendName': TokenIdentifier.text(
            parrentName: 'childFriends', name: 'childFriendName'),
      },
    );

    expect(
        response.toString(),
        equals(
            '''AnalysedResponse(tokenIdentifiers: {VariableImplementation.model(modelTokenIdentifier: TokenIdentifier.model(parrentName: null, name: father, textsNames: [fatherName], booleanNames: [hasChild], subModelsNames: [children]))}, segments: [AnalysedSegment.text(offset: TextOffset(start: 0, end: 10), segmentText: Hello, Im ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 13, end: 19), segmentText: {{#father}}), AnalysedSegment.text(offset: TextOffset(start: 21, end: 21), segmentText: ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 23, end: 33), segmentText: {{fatherName}}), AnalysedSegment.text(offset: TextOffset(start: 35, end: 37), segmentText: .
), AnalysedSegment.validDeclaration(offset: TextOffset(start: 40, end: 48), segmentText: {{^hasChild}}), AnalysedSegment.text(offset: TextOffset(start: 50, end: 74), segmentText: I dont have child yet...), AnalysedSegment.validDeclaration(offset: TextOffset(start: 77, end: 85), segmentText: {{/hasChild}}), AnalysedSegment.text(offset: TextOffset(start: 87, end: 87), segmentText: ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 90, end: 98), segmentText: {{#hasChild}}), AnalysedSegment.text(offset: TextOffset(start: 100, end: 123), segmentText: I have kids!
They are:
), AnalysedSegment.validDeclaration(offset: TextOffset(start: 126, end: 134), segmentText: {{#children}}), AnalysedSegment.text(offset: TextOffset(start: 136, end: 136), segmentText: ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 138, end: 153), segmentText: {{fatherChildName}}), AnalysedSegment.text(offset: TextOffset(start: 155, end: 184), segmentText: . The name of his friends is ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 187, end: 199), segmentText: {{#childFriends}}), AnalysedSegment.text(offset: TextOffset(start: 201, end: 201), segmentText: ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 203, end: 218), segmentText: {{childFriendName}}), AnalysedSegment.text(offset: TextOffset(start: 220, end: 220), segmentText: ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 223, end: 235), segmentText: {{/childFriends}}), AnalysedSegment.text(offset: TextOffset(start: 237, end: 237), segmentText: ), AnalysedSegment.validDeclaration(offset: TextOffset(start: 240, end: 248), segmentText: {{/children}}), AnalysedSegment.text(offset: TextOffset(start: 250, end: 251), segmentText: 
), AnalysedSegment.validDeclaration(offset: TextOffset(start: 254, end: 262), segmentText: {{/hasChild}}), AnalysedSegment.text(offset: TextOffset(start: 264, end: 265), segmentText: 
), AnalysedSegment.validDeclaration(offset: TextOffset(start: 268, end: 274), segmentText: {{/father}}), AnalysedSegment.text(offset: TextOffset(start: 276, end: 276), segmentText: )])'''));
  });
}

extension on List<String> {
  List<String> get removeEmpty =>
      where((element) => !element.contains('\n') && element != '').toList();
}
