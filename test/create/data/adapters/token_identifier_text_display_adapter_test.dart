import 'package:flutter_test/flutter_test.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';

void main() {
  final tokenIdentifierTextDisplayAdapter = TokenIdentifierTextDisplayAdapter();
  test(
    'Should show all texts, booleans and models text with no target identifiers',
    () async {
      final text = tokenIdentifierTextDisplayAdapter.toDisplayText(
        textPipes: textsMock,
        booleanPipes: booleansMock,
        choicePipes: [],
        modelPipes: [modelMock],
        targetIdentifiersName: null,
      );
      expect(text, '''📦 Current variables options
┣━━━📄 Text 0-1
┣━━━📄 Text 0-2
┣━━━🔗 Boolean 1-1
┣━━━🔗 Boolean 1-2
┗━┳━📂 Model 1-1
  ┣━━━📄 Text 1-1
  ┣━━━📄 Text 1-2
  ┣━━━🔗 Boolean 1-1
  ┣━━━🔗 Boolean 1-2
  ┣━┳━📂 Model 2-1
  ┃ ┣━━━📄 Text 2-1
  ┃ ┣━━━🔗 Boolean 2-1
  ┃ ┣━━━🔗 Boolean 2-2
  ┃ ┗━┳━📂 Model 3-1
  ┃   ┣━━━📄 Text 3-1
  ┃   ┣━━━🔗 Boolean 3-1
  ┃   ┣━━━🔗 Boolean 3-2
  ┃   ┣━━━🔗 Boolean 3-3
  ┃   ┣━┳━📂 Model 4-1
  ┃   ┃ ┣━━━📄 Text 4-1
  ┃   ┃ ┗━━━📄 Text 4-2
  ┃   ┣━┳━📂 Model 4-2
  ┃   ┃ ┣━━━🔗 Boolean 4-1
  ┃   ┃ ┗━━━🔗 Boolean 4-2
  ┃   ┗━┳━📂 Model 4-3
  ┃     ┣━━━📂 Model 5-1
  ┃     ┗━┳━📂 Model 5-2
  ┃       ┗━━━🔗 Boolean 5-1
  ┣━━━📂 Model 2-2
  ┗━┳━📂 Model 2-3
    ┣━━━📄 Text 1-1
    ┣━━━📄 Text 1-2
    ┗━━━🔗 Boolean 2-1
''');
    },
  );

  test(
    'Should show all texts, booleans and models text '
    'with that are contained in target identifiers',
    () async {
      final text = tokenIdentifierTextDisplayAdapter.toDisplayText(
        textPipes: textsMock,
        booleanPipes: booleansMock,
        choicePipes: [],
        modelPipes: [modelMock],
        targetIdentifiersName: [
          ...textsMock.map((e) => e.mustacheName),
          ...booleansMock.map((e) => e.mustacheName),
          'Model 1-1',
          'Text 1-1',
          'Text 1-2',
          'Boolean 1-1',
          'Boolean 1-2',
          'Model 2-1',
          'Text 2-1',
          'Boolean 2-1',
          'Boolean 2-2',
          'Model 3-1',
          'Text 3-1',
          'Boolean 3-1',
          'Boolean 3-2',
          'Boolean 3-3',
        ],
      );
      expect(text, '''📦 Current variables options
┣━━━📄 Text 0-1
┣━━━📄 Text 0-2
┣━━━🔗 Boolean 1-1
┣━━━🔗 Boolean 1-2
┗━┳━📂 Model 1-1
  ┣━━━📄 Text 1-1
  ┣━━━📄 Text 1-2
  ┣━━━🔗 Boolean 1-1
  ┣━━━🔗 Boolean 1-2
  ┣━┳━📂 Model 2-1
  ┃ ┣━━━📄 Text 2-1
  ┃ ┣━━━🔗 Boolean 2-1
  ┃ ┣━━━🔗 Boolean 2-2
  ┃ ┗━┳━📂 Model 3-1
  ┃   ┣━━━📄 Text 3-1
  ┃   ┣━━━🔗 Boolean 3-1
  ┃   ┣━━━🔗 Boolean 3-2
  ┃   ┣━━━🔗 Boolean 3-3
''');
    },
  );
}

final textsMock = [
  TextPipe(
    name: 'Text 0-1',
    mustacheName: 'Text 0-1',
    description: 'lorem lorem lorem',
    isRequired: true,
  ),
  TextPipe(
    name: 'Text 0-2',
    mustacheName: 'Text 0-2',
    description: 'lorem lorem lorem',
    isRequired: false,
  ),
];

final booleansMock = [
  BooleanPipe(
    name: 'Boolean 0-1',
    mustacheName: 'Boolean 1-1',
    description: 'lorem lorem lorem',
  ),
  BooleanPipe(
    name: 'Boolean 0-2',
    mustacheName: 'Boolean 1-2',
    description: 'lorem lorem lorem',
  ),
];

final modelMock = ModelPipe(
  choicePipes: [],
  name: 'Model 1-1',
  mustacheName: 'Model 1-1',
  description: 'lorem lorem lorem',
  textPipes: [
    TextPipe(
      name: 'Text 1-1',
      mustacheName: 'Text 1-1',
      description: 'lorem lorem lorem',
      isRequired: true,
    ),
    TextPipe(
      name: 'Text 1-2',
      mustacheName: 'Text 1-2',
      description: 'lorem lorem lorem',
      isRequired: false,
    ),
  ],
  booleanPipes: [
    BooleanPipe(
      name: 'Boolean 1-1',
      mustacheName: 'Boolean 1-1',
      description: 'lorem lorem lorem',
    ),
    BooleanPipe(
      name: 'Boolean 1-2',
      mustacheName: 'Boolean 1-2',
      description: 'lorem lorem lorem',
    ),
  ],
  modelPipes: [
    ModelPipe(
      choicePipes: [],
      name: 'Model 2-1',
      mustacheName: 'Model 2-1',
      description: 'lorem lorem lorem',
      textPipes: [
        TextPipe(
          name: 'Text 2-1',
          mustacheName: 'Text 2-1',
          description: 'lorem lorem lorem',
          isRequired: true,
        ),
      ],
      booleanPipes: [
        BooleanPipe(
          name: 'Boolean 2-1',
          mustacheName: 'Boolean 2-1',
          description: 'lorem lorem lorem',
        ),
        BooleanPipe(
          name: 'Boolean 2-2',
          mustacheName: 'Boolean 2-2',
          description: 'lorem lorem lorem',
        ),
      ],
      modelPipes: [
        ModelPipe(
          choicePipes: [],
          name: 'Model 3-1',
          mustacheName: 'Model 3-1',
          description: 'lorem lorem lorem',
          textPipes: [
            TextPipe(
              name: 'Text 3-1',
              mustacheName: 'Text 3-1',
              description: 'lorem lorem lorem',
              isRequired: true,
            ),
          ],
          booleanPipes: [
            BooleanPipe(
              name: 'Boolean 3-1',
              mustacheName: 'Boolean 3-1',
              description: 'lorem lorem lorem',
            ),
            BooleanPipe(
              name: 'Boolean 3-2',
              mustacheName: 'Boolean 3-2',
              description: 'lorem lorem lorem',
            ),
            BooleanPipe(
              name: 'Boolean 3-3',
              mustacheName: 'Boolean 3-3',
              description: 'lorem lorem lorem',
            ),
          ],
          modelPipes: [
            ModelPipe(
              choicePipes: [],
              name: 'Model 4-1',
              mustacheName: 'Model 4-1',
              description: 'lorem lorem lorem',
              textPipes: [
                TextPipe(
                  name: 'Text 4-1',
                  mustacheName: 'Text 4-1',
                  description: 'lorem lorem lorem',
                  isRequired: true,
                ),
                TextPipe(
                  name: 'Text 4-2',
                  mustacheName: 'Text 4-2',
                  description: 'lorem lorem lorem',
                  isRequired: true,
                ),
              ],
              booleanPipes: const [],
              modelPipes: const [],
            ),
            ModelPipe(
              choicePipes: [],
              name: 'Model 4-2',
              mustacheName: 'Model 4-2',
              description: 'lorem lorem lorem',
              textPipes: const [],
              booleanPipes: [
                BooleanPipe(
                  name: 'Boolean 4-1',
                  mustacheName: 'Boolean 4-1',
                  description: 'lorem lorem lorem',
                ),
                BooleanPipe(
                  name: 'Boolean 4-2',
                  mustacheName: 'Boolean 4-2',
                  description: 'lorem lorem lorem',
                ),
              ],
              modelPipes: const [],
            ),
            ModelPipe(
              choicePipes: [],
              name: 'Model 4-3',
              mustacheName: 'Model 4-3',
              description: 'lorem lorem lorem',
              textPipes: const [],
              booleanPipes: const [],
              modelPipes: [
                ModelPipe(
                  choicePipes: [],
                  name: 'Model 5-1',
                  mustacheName: 'Model 5-1',
                  description: 'lorem lorem lorem',
                  textPipes: const [],
                  booleanPipes: const [],
                  modelPipes: const [],
                ),
                ModelPipe(
                  choicePipes: [],
                  name: 'Model 5-2',
                  mustacheName: 'Model 5-2',
                  description: 'lorem lorem lorem',
                  textPipes: const [],
                  booleanPipes: [
                    BooleanPipe(
                      name: 'Boolean 5-1',
                      mustacheName: 'Boolean 5-1',
                      description: 'lorem lorem lorem',
                    ),
                  ],
                  modelPipes: const [],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    ModelPipe(
      choicePipes: [],
      name: 'Model 2-2',
      mustacheName: 'Model 2-2',
      description: 'lorem lorem lorem',
      textPipes: const [],
      booleanPipes: const [],
      modelPipes: const [],
    ),
    ModelPipe(
      choicePipes: [],
      name: 'Model 2-3',
      mustacheName: 'Model 2-3',
      description: 'lorem lorem lorem',
      textPipes: [
        TextPipe(
          name: 'Text 2-1',
          mustacheName: 'Text 1-1',
          description: 'lorem lorem lorem',
          isRequired: true,
        ),
        TextPipe(
          name: 'Text 2-2',
          mustacheName: 'Text 1-2',
          description: 'lorem lorem lorem',
          isRequired: false,
        ),
      ],
      booleanPipes: [
        BooleanPipe(
          name: 'Boolean 2-1',
          mustacheName: 'Boolean 2-1',
          description: 'lorem lorem lorem',
        ),
      ],
      modelPipes: const [],
    ),
  ],
);

/*
┣━📂 Model 1-1
  ┣━📄 Text 1-1
  ┣━📄 Text 1-2
  ┣━🔗 Boolean 1-1
  ┣━🔗 Boolean 1-2
  ┣━📂 Model 2-1
    ┣━📄 Text 2-1
    ┣━🔗 Boolean 2-1
    ┣━🔗 Boolean 2-2
    ┣━📂 Model 3-1
      ┣━📄 Text 3-1
      ┣━🔗 Boolean 3-1
      ┣━🔗 Boolean 3-2
      ┣━🔗 Boolean 3-3
  ┣━📂 Model 2-2
    ┣━📄 Text 1-1
    ┣━📄 Text 1-2
    ┣━🔗 Boolean 2-1
*/

/*

📦 Current variables options
┣━📂 
┣━📄 
┣━📄 
┣━🔗 
┣━🔗 
┣━📂 Model 1-1
  ┣━📄 Model 1-1
  ┣━📄 Model 1-1
  ┣━🔗 Model 1-1
  ┣━🔗 Model 1-1
  ┣━📂 Model 2-1
    ┣━📄 Model 2-1
    ┣━🔗 Model 2-1
    ┣━🔗 Model 2-1
    ┣━📂 Model 3-1
      ┣━📄 Model 3-1
      ┣━🔗 Model 3-1
      ┣━🔗 Model 3-1
      ┣━🔗 Model 3-1
  ┣━📂 Model 2-2
    ┣━📄 Model 2-2
    ┣━📄 Model 2-2
    ┣━🔗 Model 2-2

📦 Current variables options
┣━📂 
┣━📄 
┣━📄 
┣━🔗 
┣━🔗 
┗━📂 Model 1-1
  ┣━📄 Model 1-1
  ┣━📄 Model 1-1
  ┣━🔗 Model 1-1
  ┣━🔗 Model 1-1
  ┣━📂 Model 2-1
  ┃ ┣━📄 Model 2-1
  ┃ ┣━🔗 Model 2-1
  ┃ ┣━🔗 Model 2-1
  ┃ ┗━📂 Model 3-1
  ┃   ┣━📄 Model 3-1
  ┃   ┣━🔗 Model 3-1
  ┃   ┣━🔗 Model 3-1
  ┃   ┗━🔗 Model 3-1
  ┗━📂 Model 2-2
    ┣━📄 Model 2-2
    ┣━📄 Model 2-2
    ┗━🔗 Model 2-2


📦 Current variables options
┣━━━📄 Text 0-1
┣━━━📄 Text 0-2
┣━━━🔗 Boolean 1-1
┣━━━🔗 Boolean 1-2
┗━┳━📂 Model 1-1
  ┣━━━📄 Text 1-1
  ┣━━━📄 Text 1-2
  ┣━━━🔗 Boolean 1-1
  ┣━━━🔗 Boolean 1-2
  ┣━┳━📂 Model 2-1
  ┃ ┣━━━📄 Text 2-1
  ┃ ┣━━━🔗 Boolean 2-1
  ┃ ┣━━━🔗 Boolean 2-2
  ┃ ┗━┳━📂 Model 3-1
  ┃   ┣━━━📄 Text 3-1
  ┃   ┣━━━🔗 Boolean 3-1
  ┃   ┣━━━🔗 Boolean 3-2
  ┃   ┣━━━🔗 Boolean 3-3
  ┃   ┣━┳━📂 Model 4-1
  ┃   ┃ ┣━━━📄 Text 4-1
  ┃   ┃ ┗━━━📄 Text 4-2
  ┃   ┣━┳━📂 Model 4-2
  ┃   ┃ ┣━━━🔗 Boolean 4-1
  ┃   ┃ ┗━━━🔗 Boolean 4-2
  ┃   ┗━┳━📂 Model 4-3
  ┃     ┣━━━📂 Model 5-1
  ┃     ┗━┳━📂 Model 5-2
  ┃       ┗━━━🔗 Boolean 5-1
  ┣━━━📂 Model 2-2
  ┗━┳━📂 Model 2-3
    ┣━━━📄 Text 1-1
    ┣━━━📄 Text 1-2
    ┗━━━🔗 Boolean 2-1

📦 Current variables options
┣━━━📄 Text 0-1
┣━━━📄 Text 0-2
┣━━━🔗 Boolean 1-1
┣━━━🔗 Boolean 1-2
┗━┳━📂 Model 1-1
  ┣━━━📄 Text 1-1
  ┣━━━📄 Text 1-2
  ┣━━━🔗 Boolean 1-1
  ┣━━━🔗 Boolean 1-2
  ┣━┳━📂 Model 2-1
    ┣━━━📄 Text 2-1
    ┣━━━🔗 Boolean 2-1
    ┣━━━🔗 Boolean 2-2
    ┗━┳━📂 Model 3-1
      ┣━━━📄 Text 3-1
      ┣━━━🔗 Boolean 3-1
      ┣━━━🔗 Boolean 3-2
      ┣━━━🔗 Boolean 3-3
      ┣━┳━📂 Model 4-1
        ┣━━━📄 Text 4-1
        ┗━━━📄 Text 4-2
      ┣━┳━📂 Model 4-2
        ┣━━━🔗 Boolean 4-1
        ┗━━━🔗 Boolean 4-2
      ┗━┳━📂 Model 4-3
        ┣━━━📂 Model 5-1
        ┗━┳━📂 Model 5-2
          ┗━━━🔗 Boolean 5-1
  ┣━━━📂 Model 2-2
  ┗━┳━📂 Model 2-3
    ┣━━━📄 Text 1-1
    ┣━━━📄 Text 1-2
    ┗━━━🔗 Boolean 2-1
*/
