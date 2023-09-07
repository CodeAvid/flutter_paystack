import 'dart:io';

import 'package:flutter/services.dart';

/// Holds data that's different on Android and iOS
class PlatformInfo {
  final String userAgent;
  final String paystackBuild;
  final String deviceId;

  static Future<PlatformInfo> fromMethodChannel(MethodChannel channel) async {
    // TODO: Update for every new versions.
    //  And there should a better way to fucking do this
    const pluginVersion = '1.0.7';

    final platform = Platform.operatingSystem;
    String userAgent = '${platform}_Paystack_$pluginVersion';
    String deviceId = await channel.invokeMethod('getDeviceId') ?? '';
    return PlatformInfo._(
      userAgent: userAgent,
      paystackBuild: pluginVersion,
      deviceId: deviceId,
    );
  }

  const PlatformInfo._({
    required this.userAgent,
    required this.paystackBuild,
    required this.deviceId,
  });

  @override
  String toString() {
    return '[userAgent = $userAgent, paystackBuild = $paystackBuild, deviceId = $deviceId]';
  }
}
