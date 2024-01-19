import 'package:equatable/equatable.dart';
import 'package:mustache_hub_core/src/entities/pipe/pipe.dart';

class ExpectedPayload extends Equatable {
  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  const ExpectedPayload({
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [textPipes, booleanPipes, modelPipes];
}
