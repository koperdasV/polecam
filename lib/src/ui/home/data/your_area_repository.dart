// import 'dart:convert';

// import 'package:flutter/services.dart';

// abstract class IYourAreaRepo {
//   Future<List<CategoriesModel>> fetchRecommended();
// }
// class YourAreaRepository implements IYourAreaRepo {  
// @override
//   Future<List<CategoriesModel>> fetchYourArea() async{
//      final response = await rootBundle.loadString('assets/categories.json');
//     final json = jsonDecode(response) as List<dynamic>;
//     final area = json
//         .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return area;
//   }}