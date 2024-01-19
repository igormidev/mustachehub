import 'dart:convert';

import 'package:uuid/uuid.dart';
import 'package:equatable/equatable.dart';

part 'pipe_impl/text_pipe.dart';
part 'pipe_impl/boolean_pipe.dart';
part 'pipe_impl/model_pipe.dart';

sealed class Pipe {
  abstract final String name;
  abstract final String description;
  abstract final String mustacheName;
  abstract final String pipeId;

  const Pipe();
}

final v2 = {
  'textPipes': [
    {
      'runtimeType': 'TextPipe',
      'name': 'Your name',
      'description': 'Type here your name',
      'id': '123',
      'isRequired': true,
      'mustacheName': 'userName',
    }
  ],
  'booleanPipes': [
    {
      'runtimeType': 'BooleanPipe',
      'name': 'Do you know how to program in Flutter?',
      'description':
          'Set to true if you have the skills to programm in flutter',
      'id': '456',
      'defaultValue': true,
      'mustacheName': 'doYouProgramInFlutter',
    }
  ],
  'models': [
    {
      'runtimeType': 'ModelPipe',
      'name': 'Your children',
      'description': 'Pass here the information for each child you have',
      'id': '789',
      'textPipes': [
        {
          'runtimeType': 'TextPipe',
          'name': 'Child name',
          'description': 'The name of the child',
          'id': '010',
          'isRequired': true,
        },
        {
          'runtimeType': 'TextPipe',
          'name': 'Child age',
          'description': 'The age of the child',
          'id': '011',
          'isRequired': true,
        },
      ],
      'booleanPipes': [
        {
          'runtimeType': 'BooleanPipe',
          'name': 'Have black hair',
          'description': 'Set to true if the child has black hair',
          'id': '012',
          'isRequired': true,
        },
      ],
      'modelPipes': [
        {
          'runtimeType': 'ModelPipe',
          'name': 'Child friends',
          'description':
              'Pass here the information for each friend your child have',
          'id': '013',
          'textPipes': [
            {
              'runtimeType': 'TextPipe',
              'name': 'Friend name',
              'description': 'The name of your child friend',
              'id': '014',
              'isRequired': true,
            },
            {
              'runtimeType': 'TextPipe',
              'name': 'Friend age',
              'description': 'The age of your child friend',
              'id': '015',
              'isRequired': true,
            },
          ]
        }
      ]
    }
  ]
};
