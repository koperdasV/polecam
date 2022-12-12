import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/journal/model/journal/journal_model.dart';

mixin IJournalsRepo {
  Future<List<JournalModel>> fetchJournals(int page, String responseBody);
}

class JournalRepository implements IJournalsRepo {
  @override
  Future<List<JournalModel>> fetchJournals(
    int page,
    String response,
  ) async {
    final response = await rootBundle.loadString('assets/journal.json');
    final json = await jsonDecode(response) as List<dynamic>;
    final journal = json
        .map((e) => JournalModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return journal;
  }
}
