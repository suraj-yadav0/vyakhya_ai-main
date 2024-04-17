import 'package:flutter/material.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDrawerScreen(title: "H e l p", body: Center(
        child: Text(
          "Contact: surajyadav200701@gmail.com",
          style: TextStyle(color: Colors.white),
        ),
      ),);
  }
}