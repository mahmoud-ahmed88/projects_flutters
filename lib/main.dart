import 'package:first_counter/presentation/splash.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // ضروري علشان kReleaseMode

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const PointsCounterApp(), // استخدم الكلاس الصحيح
  ),
);

class PointsCounterApp extends StatelessWidget {
  const PointsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Points Counter",
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData.dark(),
      home: const SplashScreen(), // يبدأ بصفحة Splash
    );
  }
}
