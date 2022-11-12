import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/journal/model/journal/journal_model.dart';

abstract class IJournalsRepo {
  Future<List<JournalModel>> fetchJournals(int page, String responseBody);
}

class JournalRepository implements IJournalsRepo {
  @override
  Future<List<JournalModel>> fetchJournals(
    int page,
    String response,
  ) async {
    // throw Exception('test exception');
    // return Future.delayed(const Duration(seconds: 1)).then(
    //   (value) => List<String>.generate(
    //     20,
    //     (int index) => 'index: $index; page: $page',
    //     growable: false,
    //   ),
    final response = await rootBundle.loadString('assets/journal.json');
    final json = await jsonDecode(response) as List<dynamic>;
    final journal = json
        .map((e) => JournalModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return journal;
  }
}
