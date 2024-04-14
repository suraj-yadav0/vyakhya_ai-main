import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      child:ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 10,
            
            backgroundColor: Colors.teal,
            textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700)
          ),
            onPressed: onTap,
            child: Text(
              txt,
              style: const TextStyle(color: Colors.white),
            )),
      
    );
  }
}
