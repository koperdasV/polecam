import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/categories_model.dart';

abstract class ICategoriesRepo {
  Future<List<CategoriesModel>> fetchCategories();
  Future<List<String>> fetchRecommended();
  Future<List<String>> fetchYourArea();
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
  Future<List<String>> fetchRecommended() {
    return Future.delayed(const Duration(seconds: 1)).then(
      (value) => List<String>.generate(
        20,
        (int index) => 'index: $index;',
        growable: false,
      ),);
  }
  
  @override
  Future<List<String>> fetchYourArea() {
     return Future.delayed(const Duration(seconds: 1)).then(
      (value) => List<String>.generate(
        20,
        (int index) => 'index: $index;',
        growable: false,
      ),);
  }
}
