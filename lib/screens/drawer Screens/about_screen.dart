import 'package:flutter/material.dart';

import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDrawerScreen(
      title: 'A b o u t',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Vyakya AI",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    wordSpacing: 4.5),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Powered by GPT 3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 4.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Vyakhya AI stands as a cutting-edge solution, revolutionizing language translation with its robust architecture and user-friendly interface. As we anticipate Vyakhya AI 2.0 and beyond, the integration of quantum computing, expanded language pairs, and advancements in emotion recognition promises a future where linguistic barriers dissolve. Vyakhya AI's commitment to innovation, inclusivity, and security positions it as a pivotal force in global connectivity.\n",
                style: TextStyle(
                    color: Colors.white, fontSize: 16, wordSpacing: 2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Developed By :",
              style:
                  TextStyle(color: Colors.teal, fontSize: 20, wordSpacing: 2),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "S U R A J Y A D A V",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 4.5),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                "(2129753)",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 4.5),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            
          ],
        ),
      ),
    );
  }
}
