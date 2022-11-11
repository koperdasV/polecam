import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/widget/components/journal_card.dart';

class JournalListView extends StatelessWidget {
  JournalListView({super.key});

  @override
  Widget build(BuildContext context) {
    final journals = context.read<JournalsBloc>().state.journals;
    final canLoadMore = context.read<JournalsBloc>().state.canLoadMore;
    return CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: () async {
            context.read<JournalsBloc>().add(const RefreshJournals());
          },
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: canLoadMore ? journals.length + 1 : journals.length,
            (context, index) {
              if (index >= journals.length) {
                return BlocBuilder<JournalsBloc, JournalsState>(
                  builder: (context, state) {
                    return state.status == JournalsStateStatus.loading
                        ? const Center(
                            child: CupertinoActivityIndicator(),
                          )
                        : Center(
                            child: CupertinoButton(
                              onPressed: () {
                                context
                                    .read<JournalsBloc>()
                                    .add(const LoadJournals());
                              },
                              child: const Text(
                                'See more',
                                style: TextStyle(
                                  color: CupertinoColors.inactiveGray,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          );
                  },
                );
              }
              return JournalCard(
                journalModel: journals[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
