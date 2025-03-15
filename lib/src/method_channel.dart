import 'package:flutter/services.dart';

import 'installer_platform.dart';

class MethodChannelAndroidPackageInstaller
    extends AndroidPackageInstallerPlatform {
  final methodChannel = const MethodChannel('apk_updater');

  @override
  Future<int?> installApk(String path) async {
    final result = await methodChannel.invokeMethod<int>('installApk', path);
    return result;
  }
}
