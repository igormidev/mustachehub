import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

abstract class CurrentNavigationState {
  const CurrentNavigationState();

  abstract final EDashboardNavigationPossibilities possibilityEnum;
  Uri toUri();
}

class CollectionCurrentNavigationState extends CurrentNavigationState {
  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.collection;

  const CollectionCurrentNavigationState();

  @override
  Uri toUri() => Uri(path: '/collection');
}

class GenerateTextNavigationState extends CurrentNavigationState {
  const GenerateTextNavigationState();

  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.generateText;

  @override
  Uri toUri() => Uri(path: '/generateText');
}

class ConfigurationsNavigationState extends CurrentNavigationState {
  const ConfigurationsNavigationState();

  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.settings;

  @override
  Uri toUri() => Uri(path: '/settings');
}

class CreateMustacheNavigationState extends CurrentNavigationState {
  const CreateMustacheNavigationState();

  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.createMustache;

  @override
  Uri toUri() => Uri(path: '/createMustache');
}

class BecamePremiumNavigationState extends CurrentNavigationState {
  const BecamePremiumNavigationState();

  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.becamePremium;

  @override
  Uri toUri() => Uri(path: '/becamePremium');
}

class AccountNavigationState extends CurrentNavigationState {
  const AccountNavigationState();

  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.account;

  @override
  Uri toUri() => Uri(path: '/account');
}
