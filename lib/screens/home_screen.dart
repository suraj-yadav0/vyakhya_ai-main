import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:vyakhya_ai/model/home_type.dart';
import 'package:vyakhya_ai/widgets/custom_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 34, 31, 44),
            Color.fromARGB(255,156, 189, 188)
          ])),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Vyakhya AI",
            style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          // flexibleSpace: Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         Color.fromARGB(255, 35, 173, 118),
          //         Color.fromARGB(255, 78, 127, 130)
          //       ],
          //     ),
          //   ),
          // ),
        ),
        backgroundColor: Colors.transparent,

        body: Center(
          child: ListView(
            
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 120),
            children: HomeType.values.map((e) => CustomList(homeType: e,)).toList(),
          ).animate().fade(duration: 2.seconds),
        ),
      ),
    );
  }
}
