import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyakhya_ai/helper/global.dart';
import 'package:vyakhya_ai/screens/home_screen.dart';
import 'package:vyakhya_ai/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: primary,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //  decoration: BoxDecoration(color: Color.fromRGBO(13, 31, 45,0)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color.fromARGB(255, 109, 124, 147),
            // Colors.deepPurple,
            color1,
            color2,
            // primaryColor
            // Color.fromRGBO(13,31,45, 255)
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text("Vyakhya AI",
                style: GoogleFonts.crimsonText(
                  textStyle: const TextStyle(
                      //  color: Color.fromARGB(255, 205, 199, 216),
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                )).animate().fadeIn(duration: const Duration(seconds: 1)),
                  const Spacer(),
            Image.asset('assets/png/logoPng.png',width: 150,height: 150,),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  textAlign: TextAlign.center,
                  '"Breaking Barriers, Building Bridges:\n Your Words, Our AI. \n Seamless Translation, Limitless Communication!"',
                  style: GoogleFonts.crimsonText(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            const Spacer(),
            SizedBox(
                height: 50,
                width: 250,
                child: CustomButton(
                  onTap: () => Get.to(() => const HomeScreen()),
                  txt: "Home",
                )

                // TextButton(

                //   style: TextButton.styleFrom(
                //   //  maximumSize: Size(60, 10),
                //     foregroundColor: Colors.white,
                //     backgroundColor: const Color.fromARGB(255, 34, 31, 44),
                //     disabledForegroundColor: Colors.grey.withOpacity(0.38),
                //   ),
                //   onPressed: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => const HomeScreen()));

                //     Get.to( () => const HomeScreen());
                //   },
                //  child: const Text('HOME'),
                // ),
                ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
