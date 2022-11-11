import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/categories/categories_model.dart';

abstract class ICategoriesRepo {
  Future<List<CategoriesModel>> fetchCategories();
  Future<List<CategoriesModel>> fetchRecommended();
  Future<List<CategoriesModel>> fetchYourArea();
}

class CategoriesRepository implements ICategoriesRepo {
  @override
  Future<List<CategoriesModel>> fetchCategories() async {
    final response = await rootBundle.loadString('assets/categories.json');
    final json = jsonDecode(response) as List<dynamic>;
    final categories = json
        .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return categories;
  }
  
  @override
  Future<List<CategoriesModel>> fetchRecommended() async{
    final response = await rootBundle.loadString('assets/categories.json');
    final json = jsonDecode(response) as List<dynamic>;
    final recommended = json
        .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return recommended;
  }
  
  @override
  Future<List<CategoriesModel>> fetchYourArea() async{
     final response = await rootBundle.loadString('assets/categories.json');
    final json = jsonDecode(response) as List<dynamic>;
    final area = json
        .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return area;
  }
}
