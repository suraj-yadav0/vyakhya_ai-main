import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'A B O U T',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
body: const Center(child: Text("THE ABOUT SECTION"),),
    );
  }
}
