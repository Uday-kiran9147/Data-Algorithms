import 'package:dsa/main.dart';
import 'package:flutter/material.dart';
import 'package:rotating_icon_button/rotating_icon_button.dart';

class Algorithms extends StatelessWidget {
  addAlgo() {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Form(
              // key: _formkey,
              child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                  hintText: "Algrithm Name"),
              key: ValueKey("First Name"),
              validator: (value) {
                if (value.toString().isEmpty) {
                  return "Algorithm Field  cannot be empty";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                // firstname = value.toString();
              },
            ),
            Divider(),
            TextFormField(
              cursorHeight: 20,
              decoration: InputDecoration(
                labelText: ' Complete Algorithm ',
                hintText: "Algorithm in Steps ",
                border: OutlineInputBorder(),
              ),
              key: ValueKey("Last Name"),
              validator: (value) {
                if (value.toString().isEmpty) {
                  return " cannot be empty";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                // lastname = value.toString();
              },
              
            ),
            RotatingIconButton(
                shape: ButtonShape.circle,
                // background: Colors.green,
                onTap: () {},
                child: Text("Submit"))
          ]))),
    );
  }

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
              context, MaterialPageRoute(builder: (context) => addAlgo())),
          print("pressed")
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
