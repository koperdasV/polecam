import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

abstract class IDetailRepo {
  Future<DetailModel> fetchDetails();
}

class DetailRepository implements IDetailRepo {
  @override
  Future<DetailModel> fetchDetails() async {
    // throw Exception('Test Exeption');
    // return Future.delayed(const Duration(seconds: 1)).then((value) => 'data');
    // return Future.delayed(const Duration(seconds: 1)).then((value) =>
    //     List<String>.generate(5, (int index) => 'index: $index; ',
    //         growable: false));

    final response = await rootBundle.loadString('assets/recommended.json');
    final json = await jsonDecode(response);
    final detailModel = DetailModel.fromJson(json as Map<String, dynamic>);
    return detailModel;

    // final res = (json as List)
    //     .firstWhere((element) => element['id'] == id, orElse: () => null);
    // if (res != null) {
    //   return DetailModel.fromJson(res as Map<String, dynamic>);
    // } else {
    //   return null;
    // }

//     .add() Function are use to insert value in a list

// your code should be like this

// List<int> eligibility = [];

// for(Map map in widget.eligibility){
//   // where the widget.eligibility is came from previous widget
//   // which seems a list of map in your code
//   eligibility.add(map['id']);
// }

// setState((){});

    // List tmp;
    // var response = tmp.firstWhere((element) => element.id = id, orElse: () => null);
    // final detailModel = DetailModel.fromJson(json as Map<String, dynamic>);
    // return detailModel;
  }
}
