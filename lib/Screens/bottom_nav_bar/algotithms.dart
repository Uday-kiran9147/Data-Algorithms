import 'package:dsa/main.dart';
import 'package:flutter/material.dart';
import 'package:rotating_icon_button/rotating_icon_button.dart';

import '../newAlgotithm.dart';

class Algorithms extends StatelessWidget {
  late String Algorithm_Name;
  late String Algorithm_Steps;

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => addAlgo(Algorithm_Name,Algorithm_Steps))),
          print("pressed")
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
