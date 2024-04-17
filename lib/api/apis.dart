import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:translator_plus/translator_plus.dart';
import 'package:vyakhya_ai/helper/global.dart';

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

  static Future<String> getAnswer(String question) async {
    try {
      final res =
          await post(Uri.parse('https://api.openai.com/v1/chat/completions'),
              headers: {
                HttpHeaders.contentTypeHeader: 'application/json',
                HttpHeaders.authorizationHeader: "Bearer $apiKey"
              },
              body: jsonEncode({
                "model": "gpt-3.5-turbo",
                "max_tokens": 2000,
                "temperature": 0,
                "messages": [
                  {"role": "user", "content": question},
                ]
              }));

      final data = jsonDecode(res.body);

      return data['choices'][0]['message']['content'];
    } catch (e) {
      return "Something went Wrong";
    }
  }

  
}
