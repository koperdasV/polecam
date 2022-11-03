import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/journal/bloc/journals_bloc.dart';
import 'package:polec/src/ui/journal/widget/components/cupertino_app_bar.dart';
import 'package:polec/src/ui/journal/widget/components/journal_list.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  @override
  void initState() {
    context.read<JournalsBloc>().add(const LoadJournals());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoAppBar(
        title: 'Journal',
        child: SearchBox(),
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
              child: CupertinoActivityIndicator(
                color: CupertinoColors.activeBlue,
              ),
            );
          } else {
            return JournalListView();
          }
        },
      ),
    );
  }
}
