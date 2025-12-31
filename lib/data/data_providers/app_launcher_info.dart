import 'package:flutter_ics_homescreen/export.dart';

class AppLauncherInfo {
  final String id;
  final String name;
  final String icon;
  final bool internal;

  AppLauncherInfo(
      {required this.id,
      required this.name,
      required this.icon,
      required this.internal});
}

class AppLauncherList extends Notifier<List<AppLauncherInfo>> {
  @override
  List<AppLauncherInfo> build() {
    return [];
  }

  void update(List<AppLauncherInfo> newAppList) {
    state = newAppList;
  }
}
