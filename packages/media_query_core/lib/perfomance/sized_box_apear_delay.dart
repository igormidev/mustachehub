import 'dart:async';

import 'package:flutter/material.dart';

class SizedBoxApearDelay extends StatefulWidget {
  final double? width;
  final double? height;
  final Widget child;
  final Duration duration;
  const SizedBoxApearDelay({
    super.key,
    this.width,
    this.height,
    required this.child,
    this.duration = const Duration(seconds: 1),
  });

  @override
  State<SizedBoxApearDelay> createState() => _SizedBoxApearDelayState();
}

class _SizedBoxApearDelayState extends State<SizedBoxApearDelay> {
  bool _isSizedBoxVisible = false;
  // final Completer<bool> _isSizedBoxVisible = Completer<bool>();
  @override
  void initState() {
    super.initState();
    if (context.mounted && mounted) {
      Future.delayed(widget.duration, () {
        // if (context.mounted && mounted) {
        if (context.mounted && mounted) {
          setState(() {
            _isSizedBoxVisible = true;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Visibility(
        visible: _isSizedBoxVisible,
        child: widget.child,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:media_query_core/nil.dart';

// class SizedBoxApearDelay extends StatefulWidget {
//   final double? width;
//   final double? height;
//   final Widget child;
//   final Duration duration;
//   const SizedBoxApearDelay({
//     super.key,
//     this.width,
//     this.height,
//     required this.child,
//     this.duration = const Duration(seconds: 1),
//   });

//   @override
//   State<SizedBoxApearDelay> createState() => _SizedBoxApearDelayState();
// }

// class _SizedBoxApearDelayState extends State<SizedBoxApearDelay> {
//   final ValueNotifier<bool> _isSizedBoxVisible = ValueNotifier(false);

//   @override
//   void initState() {
//     super.initState();
//     _setTimer();
//   }

//   void _setTimer() {
//     if (context.mounted == false) return;
//     Future.delayed(widget.duration, () {
//       _isSizedBoxVisible.value = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: widget.width,
//       height: widget.height,
//       child: ValueListenableBuilder(
//         valueListenable: _isSizedBoxVisible,
//         child: widget.child,
//         builder: (context, value, child) {
//           return Visibility(
//             visible: value,
//             child: child ?? nil,
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
    
//     super.dispose();
//     _isSizedBoxVisible.dispose();
//   }
// }
