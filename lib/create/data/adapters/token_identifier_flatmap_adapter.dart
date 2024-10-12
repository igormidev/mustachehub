import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:text_analyser/text_analyser.dart';

class TokenIdentifierFlatMapAdapter {
  const TokenIdentifierFlatMapAdapter();

  Map<String, VariableIdentifierMapper> toFlatMap({
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ChoicePipe> choicePipes,
    required final List<ModelPipe> modelPipes,
  }) {
    final Map<String, VariableIdentifierMapper> response = {};

    response.addEntries(textPipes
        .map(
          (p) => MapEntry(
              p.mustacheName,
              VariableIdentifierMapper.text(
                name: p.mustacheName,
                parrentName: null,
              )),
        )
        .toList());

    response.addEntries(booleanPipes
        .map(
          (p) => MapEntry(
              p.mustacheName,
              VariableIdentifierMapper.boolean(
                name: p.mustacheName,
                parrentName: null,
              )),
        )
        .toList());

    response.addEntries(
      choicePipes
          .map(
            (p) => MapEntry(
                p.mustacheName,
                VariableIdentifierMapper.choice(
                  name: p.mustacheName,
                  parrentName: null,
                  options: p.options.map((e) => e.toMustacheName).toList(),
                )),
          )
          .toList(),
    );

    for (final modelPipe in modelPipes) {
      response.addAll(_flatModelPipe(null, modelPipe));
    }

    return response;
  }

  Map<String, VariableIdentifierMapper> _flatModelPipe(
    String? modelParrentName,
    ModelPipe modelPipe,
  ) {
    final Map<String, VariableIdentifierMapper> response = {};

    final List<MapEntry<String, VariableIdentifierMapperText>> textEntries =
        modelPipe.textPipes
            .map(
              (p) => MapEntry(
                  p.mustacheName,
                  VariableIdentifierMapperText(
                    name: p.mustacheName,
                    parrentName: modelPipe.mustacheName,
                  )),
            )
            .toList();
    response.addEntries(textEntries);

    final List<MapEntry<String, VariableIdentifierMapperBoolean>>
        booleanEntries = modelPipe.booleanPipes
            .map(
              (p) => MapEntry(
                  p.mustacheName,
                  VariableIdentifierMapperBoolean(
                    name: p.mustacheName,
                    parrentName: modelPipe.mustacheName,
                  )),
            )
            .toList();
    response.addEntries(booleanEntries);

    final List<MapEntry<String, VariableIdentifierMapperChoice>> choiceEntries =
        modelPipe.choicePipes
            .map(
              (p) => MapEntry(
                  p.mustacheName,
                  VariableIdentifierMapperChoice(
                    name: p.mustacheName,
                    parrentName: modelPipe.mustacheName,
                    options: p.options.map((e) => e.toMustacheName).toList(),
                  )),
            )
            .toList();
    response.addEntries(choiceEntries);

    final subModelsEntries = Map.fromEntries(modelPipe.modelPipes.map((model) {
      return _flatModelPipe(modelPipe.mustacheName, model);
    }).expand((element) => element.entries));

    response.addAll({
      modelPipe.mustacheName: VariableIdentifierMapper.model(
        parrentName: modelParrentName,
        name: modelPipe.mustacheName,
        textsChildren: textEntries.map((e) => e.value).toList(),
        booleansChildren: booleanEntries.map((e) => e.value).toList(),
        choicesChildren: choiceEntries.map((e) => e.value).toList(),
        subModelsChildren: modelPipe.modelPipes
            .map(
              (e) => subModelsEntries[e.mustacheName]
                  as VariableIdentifierMapperModel,
            )
            .toList(),
      ),
    });

    return response;
  }
}
