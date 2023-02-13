import 'package:flutter/material.dart';

import 'bottom_nav_bar/algotithms.dart';

class CompleteAlgorithm extends StatelessWidget {

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
              Center(child: Text("qqqqqqqqqqqqqqqqqqq")),
              Center(child: Text("qqqqq"))
            ]));
          },
        ),
      ),
    );
  }
}
