import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vyakhya_ai/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animate(
            //   effects: const [ FadeEffect(), ScaleEffect()],
            //   child: const Text("Vyakhya AI", style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),),
            // ),
 const Spacer(),
            // const Text(
            //   "Vyakhya AI",
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 36,
            //       fontWeight: FontWeight.bold),
            // ).animate().fade(duration: const Duration(seconds: 3),curve: Curves.bounceIn),
            // const Spacer(),
            Lottie.asset('assets/lottie/hello.json'),
            const Spacer()
          ],
        ));
  }
}
