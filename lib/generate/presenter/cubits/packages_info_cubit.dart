import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

class PackagesInfoCubit extends Cubit<PackageInfo?> {
  PackagesInfoCubit() : super(null);

  void setPackageInfo(PackageInfo packageInfo) {
    emit(packageInfo);
  }

  void clearPackageInfo() {
    emit(null);
  }
}
