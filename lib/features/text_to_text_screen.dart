import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/widgets/custom_button.dart';
import 'package:vyakhya_ai/widgets/language_sheet.dart';

class TextToText extends StatefulWidget {
  const TextToText({super.key});

  @override
  State<TextToText> createState() => _TextToTextState();
}

class _TextToTextState extends State<TextToText> {
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
          title: const Text(
            "Vyakhya AI",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body:
        
         ListView(
          physics: const BouncingScrollPhysics(),
          padding:
              EdgeInsets.only(top: mq.height * 0.02, bottom: mq.width * 0.01),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // From Section
                InkWell(
                  onTap: () => Get.bottomSheet(const LanguageSheet()),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    width: mq.width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: const Text('Auto',style: TextStyle(color: Colors.white),),
                  ),
                ),

                // Swap Button
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.repeat,
                      color: Colors.grey,
                    )),

                //To Section,

                InkWell(
                  onTap: () => Get.bottomSheet(const LanguageSheet()),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    width: mq.width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: const Text('To',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),

            // for input,

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mq.width * 0.04, vertical: mq.height * 0.035),
              child: TextFormField(
                minLines: 5,
                maxLines: null,
                textAlign: TextAlign.center,
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(
                    hintText: "Translate Anything You Want !",
                    hintStyle: TextStyle(fontSize: 13.5,color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    )),
              ),
            ),

            SizedBox(height: mq.height * 0.04,),
            
            CustomButton(txt: "Translate", onTap: (){})
          ],
        ),
      ),
    );
  }
}
