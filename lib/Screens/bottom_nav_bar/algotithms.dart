import 'package:dsa/Screens/Algorithm_list.dart';
import 'package:dsa/Screens/newAlgotithm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Provider/algolist_provider.dart';

class AllAlgorithms extends StatefulWidget {
  @override
  State<AllAlgorithms> createState() => _AllAlgorithmsState();
}

class _AllAlgorithmsState extends State<AllAlgorithms> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AlgoListProvider>(
      builder: (context, value, child) =>  Scaffold(
        body: Container(
          child: value.algorithm.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("OOP\'s...! List is Empty")),
                    Divider(),
                    Divider(),
                    CircularProgressIndicator()
                  ],
                )
              : AlgorithmList(value.algorithm),
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
                    builder: (context) =>
                        NewAlgorithm(value.addnewAlgorithm))),
            print("pressed"),
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
