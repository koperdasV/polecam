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

    final response = await rootBundle.loadString('assets/by-id.json');
    final json = await jsonDecode(response);
    final detailModel = DetailModel.fromJson(json as Map<String, dynamic>);
    return detailModel;
  }
}
