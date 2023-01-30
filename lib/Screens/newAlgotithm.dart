import 'package:flutter/material.dart';

class addAlgo extends StatefulWidget {
  @override
  State<addAlgo> createState() => _addAlgoState();
}

class _addAlgoState extends State<addAlgo> {
  late String Algorithm_Name = "";

  late String Algorithm_Steps = "";
  final _formkey = GlobalKey<FormState>();
  addAlgo obj = new addAlgo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(),
                        hintText: "Algrithm Name"),
                    // key: ValueKey("First Name"),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Algorithm Field  cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        Algorithm_Name = value!;
                      });
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
                      setState(() {
                        Algorithm_Steps = value!;
                      });
                    },
                  ),
                  ElevatedButton(
                      // shape: ButtonShape.circle,
                      // background: Colors.green,
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save;
                          print(Algorithm_Name);
                          print(Algorithm_Steps);
                        }
                        print("submitted");
                      },
                      child: Text("Submit"))
                ]),
              ))),
    );
  }
}
