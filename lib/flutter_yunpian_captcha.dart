import 'dart:async';

import 'package:flutter/services.dart';

class FlutterYunpianCaptcha {
  static const MethodChannel _channel =
      const MethodChannel('flutter_yunpian_captcha');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
