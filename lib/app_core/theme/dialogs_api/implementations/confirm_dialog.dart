// // showDialog<bool>(
// //                         context: context,
// //                         builder: (context) {
// //                           return AlertDialog(
// //                             title: const Text('Are you sure?'),
// //                             content: const Text(
// //                               'This will clear all the data you have entered.',
// //                             ),
// //                             actions: [
// //                               TextButton(
// //                                 onPressed: () => Navigator.of(context).pop(false),
// //                                 child: const Text('Cancel'),
// //                               ),
// //                               TextButton(
// //                                 onPressed: () => Navigator.of(context).pop(true),
// //                                 child: const Text('Clear'),
// //                               ),
// //                             ],
// //                           );
// //                         },
// //                       )

// import 'package:flutter/material.dart';
// import 'package:mustachehub/app_core/theme/dialogs_api/overlay_controller.dart';

// bool showConfirmDialog(
//   BuildContext context, {
//   required String title,
//   String? description,
//   List<DialogAction>? actions,
// }) {
//   InScreenOverlay.instance().show(
//     context: context,
//     overlayType: DialogTypeMessageAction(
//       title: title,
//       description: description,
//       actions: actions ?? [DialogAction],
//     ),
//   );
// }

import 'package:flutter/material.dart';

Future<bool> confirmDialog(BuildContext context,
    {required String description}) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Are you sure?'),
            content: Text(description),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Clear'),
              ),
            ],
          );
        },
      ) ??
      false;
}
