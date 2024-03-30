import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyakhya_ai/controllers/speech_to_text_controller.dart';

import 'package:vyakhya_ai/helper/global.dart';

class SpeechLanguageSheet extends StatefulWidget {
  final SpeechTranslatorController c;
  final RxString s;
  const SpeechLanguageSheet({super.key, required this.c, required this.s});

  @override
  State<SpeechLanguageSheet> createState() => _SpeechLanguageSheetState();
}

class _SpeechLanguageSheetState extends State<SpeechLanguageSheet> {
  final _search = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mq.height * .5,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(mq.width * 0.07),
            child: TextFormField(
               onChanged: (s) => _search.value = s.toLowerCase(),
              textAlign: TextAlign.center,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.translate_rounded,
                  color: Colors.blue,
                ),
                hintText: 'Search Languages..',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),


          ),
          Expanded(child: Obx(
            () {
              final List<String> list = _search.isEmpty
                  ? widget.c.lang
                  : widget.c.lang
                      .where((element) =>
                          element.toLowerCase().contains(_search.value))
                      .toList();
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: mq.height * 0.02, left: mq.width * 0.06),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        widget.s.value = list[index];
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: mq.height * 0.02),
                        child: Text(list[index]),
                      ),
                    );
                  });
            },
          ))

        ],
      ),
    );
  }
}
