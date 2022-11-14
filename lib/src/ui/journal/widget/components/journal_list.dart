import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/widget/components/journal_card.dart';

class JournalListView extends StatelessWidget {
  JournalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JournalsBloc, JournalsState>(
      builder: (context, state) {
        if (state.status == JournalsStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
        if (state.status == JournalsStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == JournalsStateStatus.success) {
          return CustomScrollView(
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: () async {
                  context.read<JournalsBloc>().add(const RefreshJournals());
                },
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: state.canLoadMore
                      ? state.journals.length + 1
                      : state.journals.length,
                  (context, index) {
                    if (index >= state.journals.length) {
                      return BlocConsumer<JournalsBloc, JournalsState>(
                        listener: (context, state) {},
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
                      journalModel: state.journals[index],
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center(
            child: Text('No DATA'),
          );
        }
      },
    );
  }
}
