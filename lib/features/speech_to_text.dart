import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:vyakhya_ai/controllers/translator_controller.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/model/sppeech_type.dart';

import 'package:vyakhya_ai/widgets/custom_button.dart';
import 'package:vyakhya_ai/widgets/custom_card.dart';

import 'package:vyakhya_ai/widgets/custom_loading.dart';
import 'package:vyakhya_ai/widgets/language_sheet.dart';

class SpeecgToText extends StatefulWidget {
  const SpeecgToText({super.key});

  @override
  State<SpeecgToText> createState() => _SpeecgToTextState();
}

class _SpeecgToTextState extends State<SpeecgToText> {
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
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  final _c = TranslatorController();
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
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding:
              EdgeInsets.only(top: mq.height * 0.02, bottom: mq.width * 0.01),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // From Section
                InkWell(
                  onTap: () =>
                      Get.bottomSheet(LanguageSheet(c: _c, s: _c.from)),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      width: mq.width * .4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Obx(
                        () => Text(
                          _c.from.isEmpty ? 'Auto' : _c.from.value,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),

                // Swap Button
                IconButton(
                    onPressed: _c.swapLanguages,
                    icon: Obx(
                      () => Icon(CupertinoIcons.repeat,
                          color: _c.to.isNotEmpty && _c.from.isNotEmpty
                              ? Colors.blue
                              : Colors.grey),
                    )),

                //To Section,

                InkWell(
                  onTap: () => Get.bottomSheet(LanguageSheet(c: _c, s: _c.to)),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      width: mq.width * .4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Obx(
                        () => Text(
                          _c.to.isEmpty ? 'To' : _c.to.value,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),

            // for input,

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mq.width * 0.04, vertical: mq.height * 0.035),
              child: Expanded(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Align(
                    child: Text("Recognized Words"),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  // If listening is active show the recognized words
                  _speechToText.isListening
                      ? _lastWords
                      // If listening isn't active but could be tell the user
                      // how to start it, otherwise indicate that speech
                      // recognition is not yet ready or not supported on
                      // the target device
                      : _speechEnabled
                          ? 'Tap the microphone to start listening...'
                          : 'Speech not available',
                ),
              ),
            ),

            FloatingActionButton(
              onPressed: _speechToText.isNotListening
                  ? _startListening
                  : _stopListening,
              tooltip: 'Listen',
              child: Icon(_speechToText.isNotListening ? Icons.mic_off  : Icons.mic),
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: mq.width * 0.04, vertical: mq.height * 0.035),
            //   child: TextFormField(
            //     controller: _c.texC,
            //     minLines: 5,
            //     maxLines: null,
            //     style: const TextStyle(color: Colors.white),
            //     textAlign: TextAlign.center,
            //     onTapOutside: (event) => FocusScope.of(context).unfocus(),
            //     decoration: const InputDecoration(
            //         hintText: "Translate Anything You Want !",
            //         hintStyle: TextStyle(fontSize: 13.5, color: Colors.white),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(10),
            //           ),
            //         )),
            //   ),
            // ),

            // Obx(
            //   () => _translateResult(),
            // ),

            SizedBox(
              height: mq.height * 0.04,
            ),

            // if (_c.resultC.text.isNotEmpty)
            //   Obx(
            //     () => _translateResult(),
            //   ),

            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                children: SpeechType.values
                    .map((e) => CustomCard(speechType: e))
                    .toList(),
              ),
            ),
            SizedBox(
              height: mq.height * 0.04,
            ),

            CustomButton(txt: "Translate", onTap: _c.googleTranslate)
          ],
        ),
      ),
    );
  }

  Widget _translateResult() => switch (_c.status.value) {
        Status.none => const SizedBox(),
        Status.complete => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.04, vertical: mq.height * 0.035),
            child: TextFormField(
              controller: _c.resultC,
              style: const TextStyle(color: Colors.white),
              // minLines: 5,
              maxLines: null,
              textAlign: TextAlign.center,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
        Status.loading => const Align(child: CustomLoading())
      };
}
