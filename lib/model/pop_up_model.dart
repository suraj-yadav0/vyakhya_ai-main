import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyakhya_ai/screens/PopUpScreens/help_screen.dart';
import 'package:vyakhya_ai/screens/home_screen.dart';

enum PopUpModel { home, about, reference, help }

extension MyPopUpModel on PopUpModel {
  String get title => switch (this) {
        PopUpModel.home => 'Home',
        PopUpModel.about => 'About',
        PopUpModel.reference => 'Refernce',
        PopUpModel.help => 'Help',
      };

  VoidCallback get onTap => switch (this) {
     PopUpModel.home => () => Get.to(() => const HomeScreen()),
        PopUpModel.about => () => Get.to(() => const HelpScreen()),
        PopUpModel.reference => () => Get.to(() => const HelpScreen()),
        PopUpModel.help => () => Get.to(() => const HelpScreen()),
  };
}
