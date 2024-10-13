import 'package:simple_platform/simple_platform.dart';

class DeviceUtils {
  static bool get isDesktop =>
      AppPlatform.isLinux ||
      AppPlatform.isWeb ||
      AppPlatform.isLinux ||
      AppPlatform.isWindows;

  static bool get usesTouchScreen =>
      !DevicePlatform.isLinux &&
      !DevicePlatform.isWindows &&
      !DevicePlatform.isMacOS;
}
