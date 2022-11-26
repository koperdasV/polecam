import 'package:flutter/material.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/journal/model/journal/journal_model.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    Key? key,
    required this.journalModel,
  }) : super(key: key);

  final JournalModel journalModel;

  @override
  Widget build(BuildContext context) {
    return ShowDialog(
      height: 520,
      child: Column(
        children: [
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage(
              journalModel.target.avatar,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              journalModel.target.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            child: Text(
              textAlign: TextAlign.center,
              '${journalModel.target.name} recommends\n With your first purchase'
              '\nYou will get a 30% discount',
              style: const TextStyle(
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: InActiveButton(
              text: 'Save the Card',
              onPressed: () {},
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
