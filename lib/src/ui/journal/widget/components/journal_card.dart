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
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
      onTap: () {
        alertDialog(context, journalModel);
      },
    );
  }
}

Future<void> alertDialog(BuildContext context, JournalModel journalModel) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialogWidget(
        journalModel: journalModel,
      );
    },
  );
}
