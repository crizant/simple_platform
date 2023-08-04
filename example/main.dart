import 'package:flutter/material.dart';
import 'package:simple_platform/simple_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'AppPlatform.currentPlatform: '
              '${AppPlatform.currentPlatform}',
              textAlign: TextAlign.center,
            ),
            Text(
              'DevicePlatform.currentPlatform: '
              '${DevicePlatform.currentPlatform}',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
