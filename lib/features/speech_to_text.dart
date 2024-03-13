import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpeecgToText extends StatefulWidget {
  const SpeecgToText({super.key});

  @override
  State<SpeecgToText> createState() => _SpeecgToTextState();
}

class _SpeecgToTextState extends State<SpeecgToText> {
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
         backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Speech To Text Translation",
            style: GoogleFonts.crimsonText(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),

        body: const Center(child: Text("I m working on it..stay tuned.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
      ),
      );

      
  }
}
