import 'package:flutter/material.dart';
import '../newAlgotithm.dart';

class Algorithms extends StatelessWidget {
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => addAlgo())),
          print("pressed"),
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
