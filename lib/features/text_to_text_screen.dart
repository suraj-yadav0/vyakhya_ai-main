import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/get_navigation.dart';

import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyakhya_ai/controllers/translator_controller.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/widgets/custom_button.dart';
import 'package:vyakhya_ai/widgets/custom_loading.dart';
import 'package:vyakhya_ai/widgets/language_sheet.dart';

class TextToText extends StatefulWidget {
  const TextToText({super.key});

  @override
  State<TextToText> createState() => _TextToTextState();
}

class _TextToTextState extends State<TextToText> {
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
          title:  Text(
            "Vyakhya AI",
            style: GoogleFonts.handlee(
            textStyle: const  TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),
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
                    child:  Obx(() => Text(
                      _c.to.isEmpty ? 
                      'To' : _c.to.value,
                      style: const  TextStyle(color: Colors.white),
                    ),)
                  ),
                ),
              ],
            ),

            // for input,

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mq.width * 0.04, vertical: mq.height * 0.035),
              child: TextFormField(
                controller: _c.texC,
                minLines: 5,
                maxLines: null,
                 style: const TextStyle(color: Colors.white),
                
                textAlign: TextAlign.center,
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(
                    hintText: "Translate Anything You Want !",
                    hintStyle: TextStyle(fontSize: 13.5, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    )),
              ),
            ),

            Obx(
              () => _translateResult(),
            ),

            SizedBox(
              height: mq.height * 0.04,
            ),

            if (_c.resultC.text.isNotEmpty)
              Obx(
                () => _translateResult(),
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
