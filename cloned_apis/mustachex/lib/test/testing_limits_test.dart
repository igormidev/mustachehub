// ignore_for_file: depend_on_referenced_packages

import 'package:mustachex/mustache.dart';
import 'package:test/test.dart';

void main() {
  test('testing limits', () {
    final source =
        '''The {{^person}}NO NAME{{/person}}{{#person}}{{name}}{{/person}}''';
    final text = Template(source).renderString({
      'person': [
        // {'name': 'John Doe'},
      ]
    });
    print(text);
  });
}
