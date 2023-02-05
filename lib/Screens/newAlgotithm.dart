import 'package:flutter/material.dart';

class NewAlgorithm extends StatefulWidget {
  final Function addAlgo; // Funcution TYPE
  NewAlgorithm(this.addAlgo);

  @override
  State<NewAlgorithm> createState() => _NewAlgorithmState();
}

class _NewAlgorithmState extends State<NewAlgorithm> {
  late String Algorithm_Name = "";

  late String Algorithm_Steps = "";

  final Algorithm_NameController = TextEditingController();

  final Algorithm_StepsController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _formkey,
          child: ListView(children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: Algorithm_NameController,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                      hintText: "Algrithm Name"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Algorithm Field  cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  // onSaved: (value) {
                  //   setState(() {
                  //     Algorithm_Name = value!;
                  //   });
                  // },
                ),
                Divider(),
                TextFormField(
                  controller: Algorithm_StepsController,
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
                  // onSaved: (value) {
                  //   setState(() {
                  //     Algorithm_Steps = value!;
                  //   });
                  // },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save;
                        Algorithm_Name = Algorithm_NameController.text;
                        Algorithm_Steps = Algorithm_StepsController.text;
                        print(Algorithm_Name);
                        print(Algorithm_Steps);
                        widget.addAlgo(Algorithm_Name, Algorithm_Steps);
                        Navigator.pop(context);
                      }
                      print("submitted");
                    },
                    child: Text("Submit"))
              ]),
        ),
      ),
    );
  }
}