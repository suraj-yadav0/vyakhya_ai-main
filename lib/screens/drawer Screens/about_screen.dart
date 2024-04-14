import 'package:flutter/material.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDrawerScreen(
      title: 'A b o u t',
      body: Center(
        child: Text(
          "THE ABOUT SECTION",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
