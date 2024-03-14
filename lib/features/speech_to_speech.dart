import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyakhya_ai/model/sppeech_type.dart';
import 'package:vyakhya_ai/widgets/custom_card.dart';

class SpeechToSpeech extends StatefulWidget {
  const SpeechToSpeech({super.key});

  @override
  State<SpeechToSpeech> createState() => _SpeechToSpeechState();
}

class _SpeechToSpeechState extends State<SpeechToSpeech> {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
            "Speech To Speech Translation",
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

        body:   SizedBox(
          height: 100,
          child: ListView(
              scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                           padding: const EdgeInsets.symmetric(horizontal: 25,),
                            children: SpeechType.values.map((e) => CustomCard(speechType: e)).toList(),
                          ),
        ),
        ),
        
        
         );
  }
}