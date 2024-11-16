import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vyakhya_ai/screens/splash_screen.dart';

void main() {
  runApp(DevicePreview(

    backgroundColor:  Colors.white,
     // Enable preview by default for web demo
      enabled: true,
  // Start with Galaxy A50 as it's a common Android device
      defaultDevice: Devices.ios.iPhone13ProMax,

      //show toolbar to let users test different devices



    


    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
      //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
