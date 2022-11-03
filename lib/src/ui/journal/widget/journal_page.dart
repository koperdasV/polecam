import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/widget/components/alert_dialog.dart';
import 'package:polec/src/ui/journal/widget/components/journal_card.dart';

import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class JournalPage extends StatefulWidget {
  JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final _controller = PageController(viewportFraction: 0.5);

  @override
  void initState() {
    context.read<JournalsBloc>().add(const LoadJournals());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 2),
        child: Column(
          children: [
            const CupertinoNavBar(
              title: 'Journal',
            ),
            const SearchBox(),
          ],
        ),
      ),
      body: BlocConsumer<JournalsBloc, JournalsState>(
        listener: (context, state) {
          if (state.status == JournalsStateStatus.failure &&
              state.errorMessage.isNotEmpty) {
            context.showErrorBar<String>(content: Text(state.errorMessage));
          }
        },
        builder: (context, state) {
          if (state.status == JournalsStateStatus.loading && state.page == 1) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return JournalListView();
          }
        },
      ),
    );
    // return CupertinoPageScaffold(
    //   navigationBar: const CupertinoNavBar(
    //     title: 'Journal',
    //   ),
    //   child: Column(
    //     children: [
    //       const SearchBox(),
    //       Expanded(
    //         child: CustomScrollView(
    //           slivers: [
    //             SliverList(
    //               delegate: SliverChildBuilderDelegate(
    //                 childCount: 10,
    //                 (context, index) => Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                     horizontal: 16,
    //                     vertical: 12,
    //                   ),
    //                   child: GestureDetector(
    //                     onTap: () {
    //                       alertDialog(context, _controller);
    //                     },
    //                     child: const JournalCard(),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
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

class JournalListView extends StatelessWidget {
  const JournalListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> journals = context.read<JournalsBloc>().state.journals;
    final bool canLoadMore = context.read<JournalsBloc>().state.canLoadMore;
    return RefreshIndicator(
      onRefresh: () async {
        context.read<JournalsBloc>().add(const RefreshJournals());
      },
      child: ListView.builder(
        itemCount: canLoadMore ? journals.length + 1 : journals.length,
        itemBuilder: (context, index) {
          if (index >= journals.length) {
            return BlocBuilder<JournalsBloc, JournalsState>(
              builder: (context, state) {
                return state.status == JournalsStateStatus.loading
                    ? Center(child: CircularProgressIndicator.adaptive())
                    : Center(
                        child: TextButton(
                            onPressed: () {
                              context
                                  .read<JournalsBloc>()
                                  .add(const LoadJournals());
                            },
                            child: Text('show more')),
                      );
              },
            );
          }
          return JournalCard(
            tmpStr: journals[index],
          );
        },
      ),
    );
  }
}
