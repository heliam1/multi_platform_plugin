import 'dart:async';

import 'package:flutter/services.dart';

class MultiPlatformPlugin {
  static const MethodChannel _channel =
      const MethodChannel('multi_platform_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
