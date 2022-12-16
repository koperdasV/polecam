import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/categories/categories_model.dart';

mixin ICategoriesRepo {
  Future<List<CategoriesModel>> fetchCategories();
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
}
