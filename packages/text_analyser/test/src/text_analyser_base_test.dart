import 'package:enchanted_collection/enchanted_collection.dart';
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
}

extension on List<String> {
  List<String> get removeEmpty =>
      where((element) => !element.contains('\n') && element != '').toList();
}
