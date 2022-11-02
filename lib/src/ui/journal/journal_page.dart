import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/journal/components/alert_dialog.dart';
import 'package:polec/src/ui/journal/components/journal_card.dart';

import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class JournalPage extends StatelessWidget {
  JournalPage({super.key});

  final _controller = PageController(viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'Journal',
      ),
      child: Column(
        children: [
          const SearchBox(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          alertDialog(context, _controller);
                        },
                        child: const JournalCard(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> alertDialog(BuildContext context, PageController _controller) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialogWidget(
        controller: _controller,
      );
    },
  );
}
