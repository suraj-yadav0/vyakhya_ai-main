import 'package:flutter/material.dart';
import 'package:vyakhya_ai/helper/global.dart';

import 'package:vyakhya_ai/model/sppeech_type.dart';

class CustomCard extends StatelessWidget {
  final SpeechType speechType;
  const CustomCard({super.key, required this.speechType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: speechType.onTap,
      child: SizedBox(

width: mq.width * 0.3,

        child: Card(
          
    
          child: Column(
            children: [
              Padding(
                padding: speechType.padding,
                child: speechType.icon,
                
              ),
              // const Spacer(),
              Text(speechType.title,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
            ],
          ),
        ),
      ),
    );
  }
}
