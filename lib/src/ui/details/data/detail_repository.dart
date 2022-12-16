import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

abstract class IDetailRepo {
  Future<DetailModel> fetchDetails();
  Future<DetailModel> fetchProductDetails({
    required String id,
    required String type,
  });
}

class DetailRepository implements IDetailRepo {
  @override
  Future<DetailModel> fetchDetails() async {

    final response = await rootBundle.loadString('assets/recommended.json');
    final json = await jsonDecode(response);
    final detailModel = DetailModel.fromJson(json as Map<String, dynamic>);
    return detailModel;
  }

  @override
  Future<DetailModel> fetchProductDetails({
    required String id,
    required String type,
  }) async {
    var response = '';
    if (type == 'recommended') {
      response = await rootBundle.loadString('assets/recommended.json');
    } else if (type == 'yourArea') {
      response = await rootBundle.loadString('assets/near.json');
    } else if (type == 'favourites') {
      response = await rootBundle.loadString('assets/favourites.json');
    }
    final json = await jsonDecode(response);
    final tmp = (json as List).firstWhere(
      (element) => element['id'] == id,
      orElse: () => null,
    );
    return DetailModel.fromJson(tmp as Map<String, dynamic>);
  }
}
