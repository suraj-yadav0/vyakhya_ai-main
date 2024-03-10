import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vyakhya_ai/model/home_type.dart';

class CustomList extends StatelessWidget {
  final HomeType homeType;
  const CustomList({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: homeType.onTap,
      child: Card(
         elevation: 10,
        child: Row(
          children: [
            Padding(
              padding: homeType.padding,
              child: SvgPicture.asset(
                homeType.svg,
                semanticsLabel: 'My SVG Image',
                height: 50,
                width: 50,
              ),
            ),
            const Spacer(),
            Text(
              homeType.title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 1),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
