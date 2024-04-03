import 'package:flutter/material.dart';
import 'package:vyakhya_ai/model/pop_up_model.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  @override
  Widget build(BuildContext context) {
   final PopUpModel popUpModel;
    return PopupMenuButton<String>(
      color: Colors.white,
      iconColor: Colors.white,
      onSelected: (String value) {
        // Handle your action on selection here
        print('Selected: $value');
      },
      itemBuilder: (BuildContext context) {
        return {'Home', 'About', 'Reference', 'Help'}.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}
