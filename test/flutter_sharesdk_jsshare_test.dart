import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sharesdk_jsshare/flutter_sharesdk_jsshare.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_sharesdk_jsshare');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterSharesdkJsshare.platformVersion, '42');
  });
}
