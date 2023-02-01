import 'package:dsa/constructors/NewAlgorithm.dart';
import 'package:flutter/material.dart';

class AlgorithmList extends StatelessWidget {
  final List<AlgorithmConstructor> _algoList;
  AlgorithmList(this._algoList);
  @override
  Widget build(BuildContext context) {
    return Container(child: ListView.builder(
      itemCount: _algoList.length,
      itemBuilder: (context, index) {
      return ListTile(
        title: Text("${_algoList[index].Algotithm_name}"),
      );
    }));
  }
}
