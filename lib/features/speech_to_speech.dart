import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/model/sppeech_type.dart';
import 'package:vyakhya_ai/widgets/custom_card.dart';

class SpeechToSpeech extends StatefulWidget {
  const SpeechToSpeech({super.key});

  @override
  State<SpeechToSpeech> createState() => _SpeechToSpeechState();
}

class _SpeechToSpeechState extends State<SpeechToSpeech> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = "";

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

// This happens on start of app
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

// to start listening
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  // to stop listening some duration could be setup..
  // maybe I'll add it in future

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      
    });
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            color1,color2
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Speech To Speech",
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
        body: SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            children: SpeechType.values
                .map((e) => CustomCard(speechType: e))
                .toList(),
          ),
        ),
      ),
    );
  }
}
