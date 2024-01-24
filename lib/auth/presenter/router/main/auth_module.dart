// import 'package:flutter/material.dart';
// import 'package:media_query_core/media_query_core.dart';
// import 'package:mustachehub/auth/presenter/router/main/auth_navigation_state.dart';
// import 'package:mustachehub/auth/ui/views/auth_desktop_view/auth_desktop_view.dart';
// import 'package:mustachehub/auth/ui/views/auth_mobile_view/auth_mobile_view.dart';
// import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
// import 'package:mustachehub/dashboard/ui/pages/not_found_404_page/not_found_404_page.dart';
// import 'package:mustachehub/dashboard/presenter/router/extension.dart';

// class AuthModule extends StatefulWidget {
//   const AuthModule({super.key});

//   @override
//   State<AuthModule> createState() => _AuthModuleState();
// }

// class _AuthModuleState extends State<AuthModule> {
//   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//   AuthNavigationState? state;

//   @override
//   void initState() {
//     super.initState();
//     _getStateFromContext(false);
//     context.router.addListener(_getStateFromContext);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     context.router.removeListener(_getStateFromContext);
//   }

//   void _getStateFromContext([bool willUpdate = true]) {
//     state = context.routerState?.mapOrNull(
//       loggedOut: (LoggedOut value) {
//         if (value.selectedPossibility is AuthNavigationState) {
//           return value.selectedPossibility as AuthNavigationState;
//         } else {
//           return null;
//         }
//       },
//     );
//     if (willUpdate) {
//       setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (state == null) {
//       return const NotFound404Page();
//     }

//     return VisibilityWidthBased.fromParentMaxWidthConstraint(
//       maximumWidth: ScreenSize.x1000,
//       replacement: AuthDesktopView(
//         navigatorKey: navigatorKey,
//         onPopPageCallback: context.router.handlePopPage,
//         state: state!,
//       ),
//       child: AuthMobileView(
//         onPopPageCallback: context.router.handlePopPage,
//         state: state!,
//       ),
//     );
//   }
// }
