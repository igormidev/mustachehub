// import 'package:commom_states/commom_states.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mustachehub/auth/presenter/router/main/auth_navigation_state.dart';
// import 'package:mustachehub/dashboard/presenter/states/current_navigation_state.dart';
// import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';

// class MustacheRouteInformationParser
//     extends RouteInformationParser<NavigationPossibilitiesState> {
//   @override
//   Future<NavigationPossibilitiesState> parseRouteInformationWithDependencies(
//     RouteInformation routeInformation,
//     BuildContext context,
//   ) {
//     final String routeName = routeInformation.uri.path;
//     final sessionState = context.read<SessionCubit>().state;

//     return sessionState.map<Future<NavigationPossibilitiesState>>(
//       notDeterminedYet: (_) async {
//         return NavigationPossibilitiesState.initial(
//             navigationIntent: routeInformation.uri);
//       },
//       guest: (state) async {
//         final CurrentNavigationState choosedPossibility;
//         if (routeName.startsWith('/collection')) {
//           choosedPossibility = const CollectionCurrentNavigationState();
//         } else if (routeName.startsWith('/generateText')) {
//           choosedPossibility = const GenerateTextNavigationState();
//         } else if (routeName.startsWith('/createMustache')) {
//           choosedPossibility = const CreateMustacheNavigationState();
//         } else if (routeName.startsWith('/auth')) {
//           choosedPossibility = AuthNavigationState.fromUri(path: routeName);
//         } else if (routeName.startsWith('/settings')) {
//           choosedPossibility = const ConfigurationsNavigationState();
//         } else {
//           choosedPossibility = AuthNavigationState.defaultRoute();
//         }

//         return NavigationPossibilitiesState.loggedOut(
//           selectedPossibility: choosedPossibility,
//         );
//       },
//       loggedIn: (state) async {
//         final CurrentNavigationState choosedPossibility;

//         if (routeName.startsWith('/collection')) {
//           choosedPossibility = const CollectionCurrentNavigationState();
//         } else if (routeName.startsWith('/generateText')) {
//           choosedPossibility = const GenerateTextNavigationState();
//         } else if (routeName.startsWith('/createMustache')) {
//           choosedPossibility = const CreateMustacheNavigationState();
//         } else if (routeName.startsWith('/account')) {
//           choosedPossibility = const AccountNavigationState();
//         } else if (routeName.startsWith('/settings')) {
//           choosedPossibility = const ConfigurationsNavigationState();
//         } else if (routeName.startsWith('/becamePremium')) {
//           choosedPossibility = const BecamePremiumNavigationState();
//         } else {
//           choosedPossibility = const GenerateTextNavigationState();
//         }

//         return NavigationPossibilitiesState.loggedIn(
//           selectedPossibility: choosedPossibility,
//         );
//       },
//     );
//   }

//   @override
//   RouteInformation restoreRouteInformation(
//     NavigationPossibilitiesState configuration,
//   ) {
//     final choosedPossibilityName = configuration.map(
//       initial: (state) => state.navigationIntent,
//       loggedIn: (state) => state.selectedPossibility.toUri(),
//       loggedOut: (state) => state.selectedPossibility.toUri(),
//     );

//     return RouteInformation(uri: choosedPossibilityName);
//   }
// }
