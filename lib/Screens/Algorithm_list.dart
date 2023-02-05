import 'package:dsa/Screens/Complete_algo.dart';
// import 'package:dsa/Screens/bottom_nav_bar/algotithms.dart';
// import 'package:dsa/Screens/newAlgotithm.dart';
import 'package:dsa/constructors/NewAlgorithm.dart';
import 'package:flutter/material.dart';

class AlgorithmList extends StatefulWidget {
  final List<AlgorithmConstructor> _algoList;

  AlgorithmList(this._algoList);

  @override
  State<AlgorithmList> createState() => _AlgorithmListState();
}

class _AlgorithmListState extends State<AlgorithmList> {
  void _CompleteAlgorithm() {}

  // final Function kk;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: widget._algoList.length,
            itemBuilder: (context, index) {
              return 
               ListTile(
                onTap: () => print(widget._algoList),
                //  Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => CompleteAlgorithm(
                //             this._algoList[index].Algotithm_name,
                //             this._algoList[index].Algotithm_Body))),
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
