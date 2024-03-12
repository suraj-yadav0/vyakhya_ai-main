import 'package:translator_plus/translator_plus.dart';

class APIs {
   static Future<String> googleTranslate(
      {required String from, required String to, required String text}) async {
    try {
      final translator = GoogleTranslator();

     final res = await translator.translate(text, from: from, to: to);
      return res.text;
    } catch (e) {
      return "Something Went Wrong";
    }
  }
}