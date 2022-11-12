import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/categorie_model.dart';

abstract class ICategoriesRepo {
  Future<List<CategoriesModel>> fetchCategories();
}

class CategorieRepository implements ICategoriesRepo {
  @override
  Future<List<CategoriesModel>> fetchCategories() async {
    // return Future.delayed(const Duration(seconds: 1)).then(
    //   (value) => List<String>.generate(
    //     20,
    //     (int index) => 'index: $index;',
    //     growable: false,
    //   ),
    final response = await rootBundle.loadString('assets/categories.json');
    final json = await jsonDecode(response) as List<dynamic>;
    final categories = json
        .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return categories;
  }
}
