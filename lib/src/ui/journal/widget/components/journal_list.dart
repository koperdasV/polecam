import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/widget/components/journal_card.dart';

class JournalListView extends StatelessWidget {
  JournalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<JournalsBloc, JournalsState>(
      listener: (context, state) {
        if (state.status == JournalsStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: BlocBuilder<JournalsBloc, JournalsState>(
        builder: (context, state) {
          if (state.status == JournalsStateStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else {
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
                        journalModel: state.journals[index],
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
