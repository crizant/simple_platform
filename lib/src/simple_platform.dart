import 'package:flutter/foundation.dart';
import 'enums.dart';

/// the platform of current application running on
class AppPlatform {
  AppPlatform._();

  /// the current app is an Android application
  static bool get isAndroid => currentPlatform == AppPlatformType.android;

  /// the current app is a Fuchsia application
  static bool get isFuchsia => currentPlatform == AppPlatformType.fuchsia;

  /// the current app is an iOS application
  static bool get isIOS => currentPlatform == AppPlatformType.iOS;

  /// the current app is a Linux application
  static bool get isLinux => currentPlatform == AppPlatformType.linux;

  /// the current app is a MacOS application
  static bool get isMacOS => currentPlatform == AppPlatformType.macOS;

  /// the current app is a Windows application
  static bool get isWindows => currentPlatform == AppPlatformType.windows;

  /// the current app is a web application
  static bool get isWeb => currentPlatform == AppPlatformType.web;

  /// On web, this is `AppPlatformType.web`,
  /// while on platform applications, this will return the actual platform
  static AppPlatformType get currentPlatform =>
      (isWebOverride ?? kIsWeb) ? AppPlatformType.web : _underlyingPlatform;

  static AppPlatformType get _underlyingPlatform {
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => AppPlatformType.android,
      TargetPlatform.fuchsia => AppPlatformType.fuchsia,
      TargetPlatform.iOS => AppPlatformType.iOS,
      TargetPlatform.linux => AppPlatformType.linux,
      TargetPlatform.macOS => AppPlatformType.macOS,
      TargetPlatform.windows => AppPlatformType.windows,
    };
  }

  /// set this value if you want to override "is web" in a test environment
  static bool? isWebOverride;
}

/// the operating system of current device
class DevicePlatform {
  DevicePlatform._();

  /// the current device is running Android
  static bool get isAndroid => currentPlatform == DevicePlatformType.android;

  /// the current device is running Fuchsia
  static bool get isFuchsia => currentPlatform == DevicePlatformType.fuchsia;

  /// the current device is running iOS
  static bool get isIOS => currentPlatform == DevicePlatformType.iOS;

  /// the current device is running Linux
  static bool get isLinux => currentPlatform == DevicePlatformType.linux;

  /// the current device is running MacOS
  static bool get isMacOS => currentPlatform == DevicePlatformType.macOS;

  /// the current device is running Windows
  static bool get isWindows => currentPlatform == DevicePlatformType.windows;

  /// the device operating system
  static DevicePlatformType get currentPlatform {
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => DevicePlatformType.android,
      TargetPlatform.fuchsia => DevicePlatformType.fuchsia,
      TargetPlatform.iOS => DevicePlatformType.iOS,
      TargetPlatform.linux => DevicePlatformType.linux,
      TargetPlatform.macOS => DevicePlatformType.macOS,
      TargetPlatform.windows => DevicePlatformType.windows,
    };
  }
}
