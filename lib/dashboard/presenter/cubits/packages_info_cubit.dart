import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackagesInfoCubit extends Cubit<PackageInfo?> {
  PackagesInfoCubit() : super(null);

  Future<void> getPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    emit(packageInfo);
  }
}
