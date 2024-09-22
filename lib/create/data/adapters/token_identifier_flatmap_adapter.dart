import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:text_analyser/text_analyser.dart';

class TokenIdentifierFlatMapAdapter {
  const TokenIdentifierFlatMapAdapter();

  Map<String, VariableScopeParentMapper> toFlatMap({
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ChoicePipe> choicePipes,
    required final List<ModelPipe> modelPipes,
  }) {
    final Map<String, VariableScopeParentMapper> response = {};
    final texts =
        textPipes.map(_getScopesFromText).expand((element) => element).toList();

    response.addAll(Map.fromEntries(texts));

    final booleans = booleanPipes
        .map(
          (p) => MapEntry(
            p.mustacheName,
            VariableScopeParentMapper.boolean(
              name: p.mustacheName,
              parrentName: null,
            ),
          ),
        )
        .toList();
    response.addAll(Map.fromEntries(booleans));

    final choices = choicePipes
        .map(
          (p) {
            return <MapEntry<String, VariableScopeParentMapper>>[
              ...p.options.map(
                (option) {
                  final o = option.toMustacheName;

                  return MapEntry(
                    '${p.mustacheName}.$o',
                    VariableScopeParentMapper.boolean(
                      name: '${p.mustacheName}.$o',
                      parrentName: null,
                    ),
                  );
                },
              ),
              ...textPipes.map(_getScopesFromText).expand((element) => element),
            ];
          },
        )
        .expand((element) => element)
        .toList();
    response.addAll(Map.fromEntries(choices));

    for (final modelPipe in modelPipes) {
      response.addAll(_flatModelPipe(null, modelPipe));
    }

    return response;
  }

  Map<String, VariableScopeParentMapper> _flatModelPipe(
    String? parrentName,
    ModelPipe modelPipe,
  ) {
    final Map<String, VariableScopeParentMapper> response = {};

    response.addAll({
      modelPipe.mustacheName: VariableScopeParentMapper.model(
        parrentName: parrentName,
        name: modelPipe.mustacheName,
        textsNames: modelPipe.textPipes.map((e) => e.mustacheName).toList(),
        booleanNames:
            modelPipe.booleanPipes.map((e) => e.mustacheName).toList(),
        choicesNames: modelPipe.choicePipes.map((e) => e.mustacheName).toList(),
        subModelsNames:
            modelPipe.modelPipes.map((e) => e.mustacheName).toList(),
      ),
    });

    final texts = modelPipe.textPipes
        .map((t) => _getScopesFromText(t, modelPipe.mustacheName))
        .expand((element) => element)
        .toList();
    response.addAll(Map.fromEntries(texts));

    final booleans = modelPipe.booleanPipes
        .map(
          (p) => MapEntry(
            p.mustacheName,
            VariableScopeParentMapper.boolean(
              name: p.mustacheName,
              parrentName: modelPipe.mustacheName,
            ),
          ),
        )
        .toList();
    response.addAll(Map.fromEntries(booleans));

    final choices = modelPipe.choicePipes
        .map(
          (p) {
            return <MapEntry<String, VariableScopeParentMapper>>[
              ...p.options.map(
                (option) {
                  final o = option.toMustacheName;
                  return MapEntry(
                    '${p.mustacheName}.$o',
                    VariableScopeParentMapper.boolean(
                      name: '${p.mustacheName}.$o',
                      parrentName: modelPipe.mustacheName,
                    ),
                  );
                },
              ),
              ..._getScopesFromMustacheName(
                p.mustacheName,
                modelPipe.mustacheName,
              ),
            ];
          },
        )
        .expand((element) => element)
        .toList();
    response.addAll(Map.fromEntries(choices));

    for (final model in modelPipe.modelPipes) {
      response.addAll({
        ..._flatModelPipe(modelPipe.mustacheName, model),
      });
    }

    return response;
  }
}

List<MapEntry<String, VariableScopeParentMapper>> _getScopesFromText(
  TextPipe p, [
  String? parrentName,
]) {
  return _getScopesFromMustacheName(p.mustacheName, parrentName);
}

List<MapEntry<String, VariableScopeParentMapper>> _getScopesFromMustacheName(
  String mn, [
  String? parrentName,
]) {
  return <MapEntry<String, VariableScopeParentMapper>>[
    MapEntry(
      '$mn.text',
      VariableScopeParentMapper.text(
        name: '$mn.text',
        parrentName: parrentName,
      ),
    ),
    MapEntry(
      '$mn.isEmpty',
      VariableScopeParentMapper.boolean(
        name: '$mn.isEmpty',
        parrentName: parrentName,
      ),
    ),
    MapEntry(
      '$mn.isNotEmpty',
      VariableScopeParentMapper.boolean(
        name: '$mn.isNotEmpty',
        parrentName: parrentName,
      ),
    ),
  ];
}
