import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyakhya_ai/screens/features/picture_to_text.dart';
import 'package:vyakhya_ai/screens/features/speech_to_speech_screen.dart';
import 'package:vyakhya_ai/screens/features/speech_to_text_screen.dart';
import 'package:vyakhya_ai/screens/features/text_to_text_screen.dart';

enum HomeType { textTotext, speechTotext, speechToSpeech, pictureTotext }

extension MyHomeType on HomeType {
  String get title => switch (this) {
        HomeType.textTotext => 'Text to Text ',
        HomeType.speechTotext => 'Speech To Text',
        HomeType.speechToSpeech => 'Speech To Speech',
        HomeType.pictureTotext => 'Picture To Text',
      };

  String get svg => switch (this) {
        HomeType.textTotext => 'assets/svg/text-message-4641.svg',
        HomeType.speechTotext => 'assets/svg/speech-to-text.svg',
        HomeType.speechToSpeech => 'assets/svg/speech-recognition.svg',
        HomeType.pictureTotext => 'assets/svg/chatbot-icon.svg',
      };

  EdgeInsets get padding => switch (this) {
        HomeType.textTotext => const EdgeInsets.all(15),
        HomeType.speechTotext => const EdgeInsets.all(15),
        HomeType.speechToSpeech => const EdgeInsets.all(10),
        HomeType.pictureTotext => const EdgeInsets.all(15),
      };

  VoidCallback get onTap => switch (this) {
        HomeType.textTotext => () => Get.to(() => const TextToText()),
        HomeType.speechTotext => () => Get.to(() => const SpeecgToText()),
        HomeType.speechToSpeech => () => Get.to(() => const SpeechToSpeech()),
        HomeType.pictureTotext => () => Get.to(() => const ChatBotScreen()),
      };
}
