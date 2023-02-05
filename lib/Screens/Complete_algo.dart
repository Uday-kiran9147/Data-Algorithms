import 'package:flutter/material.dart';

import '../constructors/NewAlgorithm.dart';
import 'bottom_nav_bar/algotithms.dart';

class CompleteAlgorithm extends StatefulWidget {
  // const CompleteAlgorithm({super.key});
  // final List<AlgorithmConstructor> _algoList;
  //  final Function _CompleteAlgorithm;
  // final Function _algoList;
  String name;
  String body;
  CompleteAlgorithm(this.name, this.body);

  @override
  State<CompleteAlgorithm> createState() => _CompleteAlgorithmState();
}

class _CompleteAlgorithmState extends State<CompleteAlgorithm> {
  AlgorithmsPage al = new AlgorithmsPage();
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
        color: Colors.green,
        child: ListView.builder(
          // itemCount: widget._algoList.length,
          itemBuilder: (context, index) {
            return Container(
                child: ListView(children: [
              Center(child: Text("qwertyuio")),
              Center(child: Text("qwertyui"))
            ]));
          },
        ),
      ),
    );
  }
}
