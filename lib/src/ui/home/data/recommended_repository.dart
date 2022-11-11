import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

abstract class IRecommendedRepo {
  Future<List<RecommendedModel>> fetchRecommended();
}
class RecommendedRepository implements IRecommendedRepo {  
  @override
  Future<List<RecommendedModel>> fetchRecommended() async{
    final response = await rootBundle.loadString('assets/recommended.json');
    final json = jsonDecode(response) as List<dynamic>;
    final recommended = json
        .map((e) => RecommendedModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return recommended;
  }
}
