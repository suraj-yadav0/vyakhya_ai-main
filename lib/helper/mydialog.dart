
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyakhya_ai/widgets/custom_loading.dart';

class MyDialog {

  // for info
  static void info(String msg) {
    Get.snackbar('Info', msg,
        backgroundColor: Colors.blue.withOpacity(0.6), colorText: Colors.white);
  }

  //for successs
static void successs(String msg) {
  Get.snackbar('Success', msg,backgroundColor: Colors.green.withOpacity(.7),colorText: Colors.white);
}

//for error

static void error(String msg ) {
  Get.snackbar('Error', msg, backgroundColor: Colors.red.withOpacity(0.7),colorText: Colors.white);
}

//for loading

static void showLoading() {
  Get.dialog(const Center(child: CustomLoading(),));
}

}