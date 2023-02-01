import 'package:dsa/Screens/bottom_nav_bar/Algorithm_list.dart';
import 'package:flutter/material.dart';
import '../../constructors/NewAlgorithm.dart';
import '../newAlgotithm.dart';

class AlgorithmsPage extends StatefulWidget {
  @override
  State<AlgorithmsPage> createState() => _AlgorithmsPageState();
}

class _AlgorithmsPageState extends State<AlgorithmsPage> {
  List<AlgorithmConstructor> _algorithm = [];

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
        child: AlgorithmList(_algorithm),
        // Expanded(
        //   child: ListView.builder(itemBuilder: (context, index) {
        //     return ListTile(
        //       leading: Icon(Icons.list),
        //       // title: ,
        //     );
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
