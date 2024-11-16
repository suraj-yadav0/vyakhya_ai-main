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

      //show toolbar to let users test different devices,

      isToolbarVisible: true,

      //keep English Only to Avoid confusion

      availableLocales: const [Locale('en')],

      //Customise Preview controls,
      
      tools: const [
        DeviceSection(
          model: true,
          orientation: false,
          frameVisibility: false,
          virtualKeyboard: false,
        ),


          // Theme switching section
        // SystemSection(
        //   locale: false, // Hide language options - we're keeping it English only
        //   theme: false, // Show theme switcher if your app has dark/light modes
        // ),

        // Disable accessibility for demo simplicity
        // AccessibilitySection(
        //   boldText: false,
        //   invertColors: false,
        //   textScalingFactor: false,
        //   accessibleNavigation: false,
        // ),

        // Hide extra settings to keep demo focused
        // SettingsSection(
        //   backgroundTheme: false,
        //   toolsTheme: false,
        // ),
      ],


      //, Curated list of devices for comprehensive preview
      devices: [
        // ... Devices.all, // uncomment to see all devices

        // Popular Android Devices
        Devices.android.samsungGalaxyA50, // Mid-range
        Devices.android.samsungGalaxyNote20, // Large screen
        Devices.android.samsungGalaxyS20, // Flagship
        Devices.android.samsungGalaxyNote20Ultra, // Premium
        Devices.android.onePlus8Pro, // Different aspect ratio
        Devices.android.sonyXperia1II, // Tall screen

        // Popular iOS Devices
        Devices.ios.iPhoneSE, // Small screen
        Devices.ios.iPhone12, // Standard size
        Devices.ios.iPhone12Mini, // Compact
        Devices.ios.iPhone12ProMax, // Large
        Devices.ios.iPhone13, // Latest standard
        Devices.ios.iPhone13ProMax, // Latest large
        Devices.ios.iPhone13Mini, // Latest compact
        Devices.ios.iPhoneSE, // Budget option
      ],



    


    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
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
