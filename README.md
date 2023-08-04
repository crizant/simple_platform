# simple_platform

Provides two classes to determine the application platform and the device platform.

## Motivation

Since Flutter's first release, developers have been using the `Platform` class from `dart:io` to target features for different platforms. However, as Flutter started supporting the web platform, people often mix up the concept between the "device platform" and the "app platform".

### App Platform

The app platform is the platform running the app, i.e. `web` for browsers, and the device's platform otherwise.

For example, you may want to add a version checking feature for your cross-platform app, but not for the web as it's always the latest version (if you manage your CDN correctly).

```
if (!AppPlatform.isWeb) {
  // check app version
}
```

### Device Platform

The device platform is the actual platform of the device.

For example, you're developing a chat app for Android, iOS, and the web. You may want to add an emoji picker for desktop users since the native emoji picker is less convenient on desktop platforms. But if users access the web from an Android or iOS device, they should not see the emoji picker.

```
if (DevicePlatform.isWindows || DevicePlatform.isMacOS || DevicePlatform.isLinux) {
  // add the emoji picker
}
```

## Features

- Compiles and runs on all platforms
- Zero external dependencies apart from the Flutter SDK.
- Test friendly

## Usage

```dart
// import the package
import 'package:simple_platform/simple_platform.dart';

// get the app platform
AppPlatform.currentPlatform

// get the device platform
DevicePlatform.currentPlatform

// handy getter methods
AppPlatform.isAndroid
AppPlatform.isFuchsia
AppPlatform.isIOS
AppPlatform.isLinux
AppPlatform.isMacOS
AppPlatform.isWindows
AppPlatform.isWeb

DevicePlatform.isAndroid
DevicePlatform.isFuchsia
DevicePlatform.isIOS
DevicePlatform.isLinux
DevicePlatform.isMacOS
DevicePlatform.isWindows
```

## Testing

If you want to override the platform in a test environment, set a value to `debugDefaultTargetPlatformOverride`.
Note you can override "is web" by setting a value to `AppPlatform.isWebOverride`.

```
debugDefaultTargetPlatformOverride = TargetPlatform.android;
AppPlatform.isWebOverride = true;
```
