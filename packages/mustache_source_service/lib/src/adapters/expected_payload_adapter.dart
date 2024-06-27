// import 'package:mustache_hub_core/mustache_hub_core.dart';

// class ExpectedPayloadAdapter {
//   Map<String, dynamic> toMap(ExpectedPayload expectedPayload) {
//     return <String, dynamic>{
//       'textPipes': expectedPayload.textPipes.map((x) => x.toMap()).toList(),
//       'booleanPipes':
//           expectedPayload.booleanPipes.map((x) => x.toMap()).toList(),
//       'modelPipes': expectedPayload.modelPipes.map((x) => x.toMap()).toList(),
//     };
//   }

//   ExpectedPayload fromMap(Map<String, dynamic> map) {
//     return ExpectedPayload(
//       textPipes: List<TextPipe>.from(
//         (map['textPipes'] as List<int>).map<TextPipe>(
//           (x) => TextPipe.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       booleanPipes: List<BooleanPipe>.from(
//         (map['booleanPipes'] as List<int>).map<BooleanPipe>(
//           (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       modelPipes: List<ModelPipe>.from(
//         (map['modelPipes'] as List<int>).map<ModelPipe>(
//           (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//     );
//   }
// }
