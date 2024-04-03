import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/widgets/AppBar%20Actions/pop_up.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            // Color.fromARGB(255, 34, 31, 44),
            // Color.fromARGB(255, 156, 189, 188),
            primaryColor,secondary
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "The ChatBot",
            style: GoogleFonts.crimsonText(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: const [
   PopUp()
  ],
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: const Center(
          child: Text(
            "I m working on it..stay tuned.",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
