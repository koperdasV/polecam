import 'package:flutter/material.dart';
import 'package:polec/src/ui/journal/widget/components/cupertino_app_bar.dart';
import 'package:polec/src/ui/journal/widget/components/journal_list.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: CupertinoAppBar(
          title: 'Journal',
          child: const SearchBox(),
        ),
        body: JournalListView(),
      ),
    );
  }
}
