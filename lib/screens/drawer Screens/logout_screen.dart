import 'package:flutter/material.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDrawerScreen(title: "L o g o u t", body: Center(
        child: Text(
          "Login Again Will be Displayed Here.!!!",
          style: TextStyle(color: Colors.white),
        ),
      ),);
  }
}