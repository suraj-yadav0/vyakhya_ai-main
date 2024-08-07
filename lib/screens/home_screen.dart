import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyakhya_ai/model/home_type.dart';
import 'package:vyakhya_ai/screens/drawer%20Screens/about_screen.dart';
import 'package:vyakhya_ai/screens/drawer%20Screens/dashboard_screen.dart';
import 'package:vyakhya_ai/screens/drawer%20Screens/feedback_screen.dart';
import 'package:vyakhya_ai/screens/drawer%20Screens/help_screen.dart';

import 'package:vyakhya_ai/screens/drawer%20Screens/seettings_screen.dart';
import 'package:vyakhya_ai/screens/welcome_screen.dart';

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
          iconTheme: const IconThemeData(color: Colors.white),
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
          ).animate().fade(duration: NumDurationExtensions(1).seconds),
        ),
        drawer: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [color1, color2])),
          child: Drawer(
            // shadowColor: Colors.teal,
            backgroundColor: Colors.transparent,
            child: Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'assets/png/logoPng.png',
                  width: 70,
                  height: 70,
                )),
                ListTile(
                  onTap: () {
                    Get.to(const DashboardScreen());
                  },
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'D A S H B O A R D',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const AboutScreen());
                  },
                  leading: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'A B O U T',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const SeettingsScreen());
                  },
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'S E T T I N G S',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const HelpScreen());
                  },
                  leading: const Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "H E L P",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const FeedbackScreen());
                  },
                  leading: const Icon(
                    Icons.feedback,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "F E E D B A C K",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const WelcomeScreen());
                  },
                  leading: const Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'L O G O U T',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
