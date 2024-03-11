import 'package:flutter/material.dart';
import 'package:vyakhya_ai/helper/global.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
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
        ],
      ),
    );
  }
}
