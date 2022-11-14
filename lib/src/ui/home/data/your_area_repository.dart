import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';

abstract class IYourAreaRepo {
  Future<List<YourAreaModel>> fetchYourArea();
}

class YourAreaRepository implements IYourAreaRepo {
  @override
  Future<List<YourAreaModel>> fetchYourArea() async {
    final response = await rootBundle.loadString('assets/near.json');
    final json = jsonDecode(response) as List<dynamic>;
    final area = json
        .map(
          (e) => YourAreaModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
    return area;
  }
}
