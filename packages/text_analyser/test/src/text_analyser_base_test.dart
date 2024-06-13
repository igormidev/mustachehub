import 'package:test/test.dart';
import 'package:text_analyser/text_analyser.dart';

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

    print(response);
  });
}
