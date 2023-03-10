import 'package:flutter/material.dart';

class NewAlgorithm extends StatefulWidget {
  final Function addAlgo; // Funcution TYPE
  NewAlgorithm(this.addAlgo);

  @override
  State<NewAlgorithm> createState() => _NewAlgorithmState();
}

class _NewAlgorithmState extends State<NewAlgorithm> {
  List<TextFormField> textFormField = [];

  late String Algorithm_Name = "";

  late String Algorithm_Steps = "";

  final Algorithm_NameController = TextEditingController();

  final Algorithm_StepsController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    addfield() {
      final newTextField = TextFormField(
        controller: Algorithm_StepsController,
        cursorHeight: 20,
        keyboardType: TextInputType.multiline,
        maxLines: null,
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
      );
      setState(() {
        textFormField.add(newTextField);
      });
    }

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
                child: Column(children: [
                  Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.multiline,
                      controller: Algorithm_NameController,
                      maxLines: null,
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
                    ),
                    Divider(),
                    TextFormField(
                      // focusNode: true,
                      controller: Algorithm_StepsController,
                      cursorHeight: 20,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
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
                    ),
                    SizedBox(
                      height: 40,
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
                          print(widget.addAlgo);
                          print("submitted");
                        },
                        child: Text("Submit")),
                    // Expanded(
                      // child: ListView.builder(
                      //     // shrinkWrap: true,
                      //     itemCount: textFormField.length,
                      //     itemBuilder: (context, index) {
                      //       return addfield();
                      //     }),
                    // )
                  ]),
                ]))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addfield();
            print("new field");
          },
          child: Icon(Icons.new_label),
        ));

    // ignore: dead_code
  }
}
