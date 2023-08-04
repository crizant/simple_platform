import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simple_platform/simple_platform.dart';

void main() {
  test('Override AppPlatform', () {
    AppPlatform.isWebOverride = true;
    expect(AppPlatform.isWeb, true);
    AppPlatform.isWebOverride = false;
    expect(AppPlatform.isWeb, false);
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    expect(AppPlatform.isAndroid, true);
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    expect(AppPlatform.isAndroid, false);
    expect(AppPlatform.isIOS, true);
  });

  test('Override DevicePlatform', () {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    expect(DevicePlatform.isAndroid, true);
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    expect(DevicePlatform.isAndroid, false);
    expect(DevicePlatform.isIOS, true);
  });
}
