import 'package:flutter/material.dart';
import 'package:vyakhya_ai/helper/global.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 0,
          backgroundColor: color1,
          textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500)
        ),
          onPressed: onTap,
          child: Text(
            txt,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
