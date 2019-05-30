import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSharesdkJsshare {
  static const MethodChannel _channel =
      const MethodChannel('flutter_sharesdk_jsshare');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
