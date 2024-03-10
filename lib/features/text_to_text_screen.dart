import 'package:flutter/material.dart';

class TextToText extends StatefulWidget {
  const TextToText({super.key});

  @override
  State<TextToText> createState() => _TextToTextState();
}

class _TextToTextState extends State<TextToText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 34, 31, 44),
              Color.fromARGB(255, 156, 189, 188)
            ])),
        child: Scaffold(
            appBar: AppBar(
          title: const Text(
            "Vyakhya AI",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        )));
  }
}
