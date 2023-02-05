import 'package:dsa/Screens/Algorithm_list.dart';
import 'package:dsa/Screens/newAlgotithm.dart';
import 'package:flutter/material.dart';
import '../../constructors/NewAlgorithm.dart';

class AlgorithmsPage extends StatefulWidget {
  @override
  State<AlgorithmsPage> createState() => _AlgorithmsPageState();
}

class _AlgorithmsPageState extends State<AlgorithmsPage> {
  List<AlgorithmConstructor> _algorithm = [];
  // late final Function _CompleteAlgorithm;

  void addnewAlgorithm(String name, String body) {
    final newAlgo =
        AlgorithmConstructor(Algotithm_name: name, Algotithm_Body: body);
    setState(() {
      _algorithm.add(newAlgo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _algorithm.isEmpty
            ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("OOP\'s...! List is Empty")),
                  Divider(),
                  CircularProgressIndicator()
                ],
              )
            : AlgorithmList(_algorithm),
        // child: Expanded(
        //   child: ListView.builder(itemBuilder: (context, index) {
        //     return AlgorithmList(_algorithm);
        //   }),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewAlgorithm(addnewAlgorithm))),
          print("pressed"),
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
