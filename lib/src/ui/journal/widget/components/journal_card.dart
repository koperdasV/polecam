import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:polec/src/ui/journal/model/journal/journal_model.dart';
import 'package:polec/src/ui/journal/widget/components/alert_dialog.dart';

class JournalCard extends StatelessWidget {
  const JournalCard({
    required this.journalModel,
    Key? key,
  }) : super(key: key);

  final JournalModel journalModel;

  @override
  Widget build(BuildContext context) {
    final _controller = PageController(viewportFraction: 0.5);

    final dateTime = DateFormat.yMMMMd();
    final time = DateFormat.jms();
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          journalModel.source.avatar,
        ),
        radius: 30,
      ),
      title: Text(
        journalModel.card.name,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        journalModel.source.name,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Colors.blue,
        ),
      ),
      trailing: Text(
        DateFormat('KK:mm:ss a')
            .format(DateTime.parse(journalModel.timpestamp)),
        //  DateFormat().formatDuration(DateTime.parse(journalModel.timpestamp)),
        // journalModel.timpestamp.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
      onTap: () {
        alertDialog(context, _controller, journalModel);
      },
    );
  }
}

Future<void> alertDialog(BuildContext context, PageController _controller,
    JournalModel journalModel) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialogWidget(
        journalModel: journalModel,
        controller: _controller,
      );
    },
  );
}
