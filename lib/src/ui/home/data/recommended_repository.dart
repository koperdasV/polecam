import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';

mixin IRecommendedRepo {
  Future<List<RecommendedModel>> fetchRecommended();
  Future<Position> getCurrentLocation();
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
  Future<Position> getCurrentLocation() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disable');
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request',
      );
    }
    return Geolocator.getCurrentPosition();
  }
}
