import 'package:flutter/material.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomDrawerScreen(
      title: "F e e d b a c k",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Spacer(),
       const   Text(
            "To report isssue visit this Github repo:",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        const  Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: (){},
              child:const Text(
                "https://github.com/suraj-yadav0/vyakhya_ai-main",
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
            ),
          ),
       const   Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
