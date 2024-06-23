import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:text_analyser/text_analyser.dart';

class TokenIdentifierFlatMapAdapter {
  const TokenIdentifierFlatMapAdapter();

  Map<String, TokenIdentifier> toFlatMap({
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ModelPipe> modelPipes,
  }) {
    final Map<String, TokenIdentifier> response = {};
    final texts = textPipes
        .map(
          (p) => MapEntry(
            p.mustacheName,
            TokenIdentifier.text(
              name: p.mustacheName,
              parrentName: null,
            ),
          ),
        )
        .toList();
    response.addAll(Map.fromEntries(texts));

    final booleans = booleanPipes
        .map(
          (p) => MapEntry(
            p.mustacheName,
            TokenIdentifier.boolean(
              name: p.mustacheName,
              parrentName: null,
            ),
          ),
        )
        .toList();

    response.addAll(Map.fromEntries(booleans));

    for (final modelPipe in modelPipes) {
      response.addAll(_flatModelPipe(null, modelPipe));
    }

    return response;
  }

  Map<String, TokenIdentifier> _flatModelPipe(
    String? parrentName,
    ModelPipe modelPipe,
  ) {
    final Map<String, TokenIdentifier> response = {};

    response.addAll({
      modelPipe.mustacheName: TokenIdentifier.model(
        parrentName: parrentName,
        name: modelPipe.mustacheName,
        textsNames: modelPipe.textPipes.map((e) => e.mustacheName).toList(),
        booleanNames:
            modelPipe.booleanPipes.map((e) => e.mustacheName).toList(),
        subModelsNames:
            modelPipe.modelPipes.map((e) => e.mustacheName).toList(),
      ),
    });

    final texts = modelPipe.textPipes
        .map(
          (p) => MapEntry(
            p.mustacheName,
            TokenIdentifier.text(
              name: p.mustacheName,
              parrentName: modelPipe.mustacheName,
            ),
          ),
        )
        .toList();
    response.addAll(Map.fromEntries(texts));

    final booleans = modelPipe.booleanPipes
        .map(
          (p) => MapEntry(
            p.mustacheName,
            TokenIdentifier.boolean(
              name: p.mustacheName,
              parrentName: modelPipe.mustacheName,
            ),
          ),
        )
        .toList();
    response.addAll(Map.fromEntries(booleans));

    for (final model in modelPipe.modelPipes) {
      response.addAll({
        ..._flatModelPipe(modelPipe.mustacheName, model),
      });
    }

    return response;
  }
}
