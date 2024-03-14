import 'package:flutter/material.dart';

enum SpeechType { write, record, scan }

extension MySpeechType on SpeechType {
  String get title => switch (this) {
        SpeechType.write => 'Write',
        SpeechType.record => 'Record',
        SpeechType.scan => 'Scan',
      };

  Icon get icon => switch (this) {
        SpeechType.write => const Icon(Icons.read_more),
        SpeechType.record => const Icon(Icons.mic),
        SpeechType.scan => const Icon(Icons.scanner),
      };

  VoidCallback get onTap => switch (this) {
        SpeechType.write => () {},
        SpeechType.record => () {},
        SpeechType.scan => () {},
      };

  EdgeInsets get padding => switch (this) {
    SpeechType.write => const EdgeInsets.all(15),
        SpeechType.record => const EdgeInsets.all(15),
        SpeechType.scan => const EdgeInsets.all(15),
  };
}
