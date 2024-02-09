import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

class TokenIdentifierTextDisplayAdapter {
  /// # Example
  ///
  ///<pre>
  /// 📦 Current variables options
  /// ┣━━━📄 Text 0-1
  /// ┣━━━📄 Text 0-2
  /// ┣━━━🔗 Boolean 1-1
  /// ┣━━━🔗 Boolean 1-2
  /// ┗━┳━📂 Model 1-1
  ///   ┣━━━📄 Text 1-1
  ///   ┣━━━📄 Text 1-2
  ///   ┣━━━🔗 Boolean 1-1
  ///   ┣━━━🔗 Boolean 1-2
  ///   ┣━┳━📂 Model 2-1
  ///   ┃ ┣━━━📄 Text 2-1
  ///   ┃ ┣━━━🔗 Boolean 2-1
  ///   ┃ ┣━━━🔗 Boolean 2-2
  ///   ┃ ┗━┳━📂 Model 3-1
  ///   ┃   ┣━━━📄 Text 3-1
  ///   ┃   ┣━━━🔗 Boolean 3-1
  ///   ┃   ┣━━━🔗 Boolean 3-2
  ///   ┃   ┣━━━🔗 Boolean 3-3
  ///   ┃   ┣━┳━📂 Model 4-1
  ///   ┃   ┃ ┣━━━📄 Text 4-1
  ///   ┃   ┃ ┗━━━📄 Text 4-2
  ///   ┃   ┣━┳━📂 Model 4-2
  ///   ┃   ┃ ┣━━━🔗 Boolean 4-1
  ///   ┃   ┃ ┗━━━🔗 Boolean 4-2
  ///   ┃   ┗━┳━📂 Model 4-3
  ///   ┃     ┣━━━📂 Model 5-1
  ///   ┃     ┗━┳━📂 Model 5-2
  ///   ┃       ┗━━━🔗 Boolean 5-1
  ///   ┣━━━📂 Model 2-2
  ///   ┗━┳━📂 Model 2-3
  ///     ┣━━━📄 Text 1-1
  ///     ┣━━━📄 Text 1-2
  ///     ┗━━━🔗 Boolean 2-1
  /// </pre>
  String toDisplayText({
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ModelPipe> modelPipes,
    List<String>? targetIdentifiersName,
  }) {
    String response = '📦 Current variables options';
    response += _displayTextFromModel(
      innerPaddingCount: [],
      targetIdentifiers: targetIdentifiersName,
      prefix: '',
      pipe: ModelPipe(
        name: '',
        mustacheName: '',
        description: '',
        textPipes: textPipes,
        booleanPipes: booleanPipes,
        modelPipes: modelPipes,
      ),
    );
    return response;
  }

  String _displayTextFromModel({
    required String prefix,
    required List<String> innerPaddingCount,
    required ModelPipe pipe,
    List<String>? targetIdentifiers,
  }) {
    String headerPadding = '';
    innerPaddingCount.forEachMapper((value, isFirst, isLast, index) {
      if (isLast == false) {
        headerPadding += value;
      }
    });

    String response = '$headerPadding$prefix${pipe.mustacheName}\n';

    String padding = '';
    for (final value in innerPaddingCount) {
      padding += value;
    }

    pipe.textPipes.forEachMapper((value, isFirst, isLast, index) {
      final String preffix;

      if (isLast && pipe.booleanPipes.isEmpty && pipe.modelPipes.isEmpty) {
        preffix = '┗━━━📄 ';
      } else {
        preffix = '┣━━━📄 ';
      }

      // String padding = ''.padLeft(innerPaddingCount.length, '  ');

      if (targetIdentifiers?.contains(value.mustacheName) ?? true) {
        response += '$padding$preffix${value.mustacheName}\n';
      }
    });

    pipe.booleanPipes.forEachMapper((value, isFirst, isLast, index) {
      final String preffix;

      if (isLast && pipe.modelPipes.isEmpty) {
        preffix = '┗━━━🔗 ';
      } else {
        preffix = '┣━━━🔗 ';
      }
      // String padding = ''.padLeft(innerPaddingCount.length, '  ');

      if (targetIdentifiers?.contains(value.mustacheName) ?? true) {
        response += '$padding$preffix${value.mustacheName}\n';
      }
    });

    pipe.modelPipes.forEachMapper((value, isFirst, isLast, index) {
      final String preffix;
      final String newPaddingValue;

      if (isLast) {
        newPaddingValue = '  ';
      } else {
        newPaddingValue = '┃ ';
      }
      final isAnyTextContainedInTargetIdentifiers =
          value.textPipes.isNotEmpty &&
              value.textPipes.any((textPipe) =>
                  targetIdentifiers?.contains(textPipe.mustacheName) != false);

      final isAnyBooleanContainedInTargetIdentifiers = value
              .booleanPipes.isNotEmpty &&
          value.booleanPipes.any((booleanPipe) =>
              targetIdentifiers?.contains(booleanPipe.mustacheName) != false);

      final isAnyModelContainedInTargetIdentifiers =
          value.modelPipes.isNotEmpty &&
              value.modelPipes.any((modelPipe) =>
                  targetIdentifiers?.contains(modelPipe.mustacheName) != false);

      if (isAnyTextContainedInTargetIdentifiers ||
          isAnyBooleanContainedInTargetIdentifiers ||
          isAnyModelContainedInTargetIdentifiers) {
        if (isLast) {
          preffix = '┗━┳━📂 ';
        } else {
          preffix = '┣━┳━📂 ';
        }
      } else {
        if (isLast) {
          preffix = '┗━━━📂 ';
        } else {
          preffix = '┣━━━📂 ';
        }
      }

      if (targetIdentifiers?.contains(value.mustacheName) ?? true) {
        response += _displayTextFromModel(
          prefix: preffix,
          innerPaddingCount: [...innerPaddingCount, newPaddingValue],
          pipe: value,
          targetIdentifiers: targetIdentifiers,
        );
      }
    });

    return response;
  }
}
