import 'package:permission_handler/permission_handler.dart';

void checkPermission() async {
  if (await Permission.nearbyWifiDevices.request().isGranted) {
    // Either the permission was already granted before or the user just granted it.
  }

// You can request multiple permissions at once.
  Map<Permission, PermissionStatus> statuses = await [
    Permission.nearbyWifiDevices,
  ].request();
  print(statuses[Permission.nearbyWifiDevices]);
}
