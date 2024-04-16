import 'package:flutter/material.dart';

class CustomFeatureDashboard extends StatelessWidget {
  final String name;
  final String description;
  const CustomFeatureDashboard(
      {super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        description,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
