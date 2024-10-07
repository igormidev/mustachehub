import 'package:mustachex/mustachex.dart';
import 'package:test/test.dart';

void main() {
  test('Testing enums', () {
    // var t = Template('{{# foo }}oi{{/ foo }}');
    // lambda(LambdaContext ctx) {
    //   return '<b>${ctx.renderString().toUpperCase()}</b>';
    // }

    // final res = t.renderString({'foo': lambda}); // shown
    // // print('"$res"');
    // 28999 - AGNALDO DO HOTEL MIRANDA

    // var temp = Template(
    //     'Will diplay: {{#foo.isCompact}}IS DISPLAYED{{/foo.isCompact}}');
    // // final input = '';
    // print(temp.renderString({'foo.isCompact': true}));

    var template = Template('I am {{}}');
    // 'Hello, I am {{businessType.}} {{#businessType.isMale}}male{{/businessType.isMale}}{{^businessType.isMale}}female{{/businessType.isMale}}');
    var output = template.renderString({
      // 'businessType': {'isMale': true, '': 'Greg Lowe'}
      'businessType': 'Greg Lowe',
      'myName-empty': true,
      // 'author': {'name': 'Greg Lowe'}
    });
    print(output);
    // var template = Template(
    //     'Hello, I am {{businessType.text}} {{#businessType.isMale}}male{{/businessType.isMale}}{{^businessType.isMale}}female{{/businessType.isMale}}');
    // var output = template.renderString({
    //   'businessType': {'isMale': true, 'text': 'Greg Lowe'}
    //   // 'author': {'name': 'Greg Lowe'}
    // });
    // print(output);
  });

  test('Testing empty text', () {
    // var t = Template('{{# foo }}oi{{/ foo }}');
    // lambda(LambdaContext ctx) {
    //   return '<b>${ctx.renderString().toUpperCase()}</b>';
    // }

    // final res = t.renderString({'foo': lambda}); // shown
    // // print('"$res"');

    // var temp = Template(
    //     'Will diplay: {{#foo.isCompact}}IS DISPLAYED{{/foo.isCompact}}');
    // // final input = '';
    // print(temp.renderString({'foo.isCompact': true}));

    var template = Template(
        'Hello, I am {{name.text}} {{^name.isEmpty}}empty{{/name.isEmpty}}');
    var output = template.renderString({
      // 'name': 'igor',
      'name': {'isEmpty': false, 'text': 'Greg Lowe'},
      // 'name': 'Greg Lowe',
    });
    print(output);
    //   var template = Template('{{businessType.isEcomerce}}');
    // var output = template.renderString({
    //   'businessType': {'isEcomerce': 'Greg Lowe'}
    // });
  });
}

final testInput =
    r'''Ho{{ozone}}w are {{ you doing today}} {{#scratch}} asdja }} {{#bacana}} {{/scratch}} {{name}}?
{{#bacana}}asdja }} {{}}skldj {{/bacana}}
''';
