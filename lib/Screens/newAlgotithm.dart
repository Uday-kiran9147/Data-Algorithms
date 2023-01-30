import 'package:flutter/material.dart';
import 'package:rotating_icon_button/rotating_icon_button.dart';

addAlgo(String Algorithm_name, Algorithm_Steps) {
  return Scaffold(
    appBar: AppBar(
      actions: [Icon(Icons.arrow_back)],
    ),
    body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
            // key: _formkey,
            child: SingleChildScrollView(
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
              keyboardType: TextInputType.multiline,
              maxLines: 7,
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
                Algorithm_Steps = value.toString();
              },
            ),
            RotatingIconButton(
                shape: ButtonShape.circle,
                // background: Colors.green,
                onTap: () {},
                child: Text("Submit"))
          ]),
        ))),
  );
}
