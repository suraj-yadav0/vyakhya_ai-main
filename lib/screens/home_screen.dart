import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyakhya_ai/model/home_type.dart';

import 'package:vyakhya_ai/widgets/custom_list.dart';
import 'package:vyakhya_ai/helper/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // intilize media Querry

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color1, color2])),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Vyakhya AI",
            style: GoogleFonts.crimsonText(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
            children: HomeType.values
                .map((e) => CustomList(
                      homeType: e,
                    ))
                .toList(),
          ).animate().fade(duration: 1.seconds),
        ),
        drawer: const Drawer(
        backgroundColor: Colors.teal,
        child: Column(
          children: [
             DrawerHeader(
        child: Icon(Icons.favorite),
      ),
       ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text('C H A T'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(Icons.logout_outlined),
        title: Text('L O G O U T'),
      )
          ],
        ),
      ),
      ),
    );
  }
}
