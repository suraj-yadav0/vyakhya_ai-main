import 'package:flutter/material.dart';
import 'package:vyakhya_ai/model/dummyData/feature_model.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDrawerScreen(
        title: "D a s h b o a r d",
        body: Column(
          children: [
            CustomFeatureDashboard(
                name: "Speech To Speech",
                description: "Try working for atleast one language.")
          ],
        ),

        //
        // Center(
        //   child: Text(
        //     "Custom Dashboard will be displayed Here.",
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        );
  }
}
