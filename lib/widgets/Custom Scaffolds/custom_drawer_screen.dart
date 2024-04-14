import 'package:flutter/material.dart';
import 'package:vyakhya_ai/helper/global.dart';

class CustomDrawerScreen extends StatelessWidget {
  final String title;
  final Widget body;
  const CustomDrawerScreen({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color1, color2])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: body,
      ),
    );
  }
}
