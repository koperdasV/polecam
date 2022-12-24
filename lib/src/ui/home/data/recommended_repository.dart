import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

mixin IRecommendedRepo {
  Future<List<RecommendedModel>> fetchRecommended();
  Future<void> searchProducts();
}

class RecommendedRepository implements IRecommendedRepo {
  @override
  Future<List<RecommendedModel>> fetchRecommended() async {
    final response = await rootBundle.loadString('assets/recommended.json');
    final json = jsonDecode(response) as List<dynamic>;
    final recommended = json
        .map((e) => RecommendedModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return recommended;
  }

  @override
  Future<void> searchProducts() async {
    final _searchController = TextEditingController();
    var filteredProducts = <RecommendedModel>[];

    final response = await rootBundle.loadString('assets/recommended.json');
    final json = jsonDecode(response) as List<dynamic>;
    final _recommended = json
        .map((e) => RecommendedModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      // RECOMMENDED SEARCH //
      filteredProducts = _recommended.where((products) {
        final offerName = products.name.toLowerCase();
        final companyName = products.name.toLowerCase();
        final description = products.description.toLowerCase();
        return offerName.contains(query) ||
            companyName.contains(query) ||
            description.contains(query);
      }).toList();
    } else {
      filteredProducts = _recommended;
    }
  }
}
