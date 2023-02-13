import 'package:flutter/foundation.dart';

import '../constructors/NewAlgorithm.dart';

class AlgoListProvider with ChangeNotifier {
  List<AlgorithmConstructor> algorithm = [];
  void addnewAlgorithm(String name, String body) {
    final newAlgo =
        AlgorithmConstructor(Algotithm_name: name, Algotithm_Body: body);
    algorithm.add(newAlgo);
    notifyListeners();
  }
}
