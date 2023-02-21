import 'package:flutter/material.dart';

import '../constructors/NewAlgorithm.dart';

class AlgoListProvider with ChangeNotifier {
  List<AlgorithmConstructor> algorithm = [];
  List<TextFormField> textlist = [];
  void addnewAlgorithm(String name, String body) {
    final newAlgo =
        AlgorithmConstructor(Algotithm_name: name, Algotithm_Body: body);
    algorithm.add(newAlgo);
    notifyListeners();
  }
}
