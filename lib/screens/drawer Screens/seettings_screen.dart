import 'package:flutter/material.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class SeettingsScreen extends StatelessWidget {
  const SeettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDrawerScreen(title: "S e t t i n g s", body: Center(
        child: Text(
          "Stay Tuned...I am working on it.",
          style: TextStyle(color: Colors.white),
        ),
      ),);
  }
}
