abstract class IJournalsRepo {
  Future<List<String>> fetchJournals(int page);
}

class JournalRepository implements IJournalsRepo {
  @override
  Future<List<String>> fetchJournals(int page) async {
    // throw Exception('test exception');
    return Future.delayed(const Duration(seconds: 1)).then((value) =>
        List<String>.generate(20, (int index) => 'index: $index; page: $page', growable: false));
  }
}
