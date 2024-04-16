import 'package:flutter/material.dart';
import 'package:vyakhya_ai/widgets/Custom%20Scaffolds/custom_drawer_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDrawerScreen(
        title: "D a s h b o a r d",
        body: ListView.builder(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                
              },
              title: Text(
                "Feature ${index +1 } ",
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Working on It.",
                style: TextStyle(color: Colors.grey),
              ),
            );
          },
        )

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
