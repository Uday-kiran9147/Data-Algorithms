
import 'package:dsa/constructors/NewAlgorithm.dart';
import 'package:flutter/material.dart';

class AlgorithmList extends StatefulWidget {
  final List<AlgorithmConstructor> _algoList;

  AlgorithmList(this._algoList);

  @override
  State<AlgorithmList> createState() => _AlgorithmListState();
}

class _AlgorithmListState extends State<AlgorithmList> {
  // final Function kk;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: widget._algoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print(widget._algoList);
                },
                leading: Text("${index + 1}"),
                title: Text("${widget._algoList[index].Algotithm_name}"),
                subtitle: Text(
                  "${widget._algoList[index].Algotithm_Body}",
                  maxLines: 1,
                ),
              );
            }));
  }
}
