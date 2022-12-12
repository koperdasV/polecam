// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/components/show_dialog.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/journal/model/journal/journal_model.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({
    super.key,
    required this.journalModel,
  });

  final JournalModel journalModel;

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  FToast? fToast;

  @override
  void initState() {
    fToast = FToast();
    fToast!.init(context);
    super.initState();
  }

  // ignore: always_declare_return_types
  _showToast() {
    final toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(colors: AppColor.inActiveButtonColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.check,
            color: Colors.white,
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            'Your offer has been saved',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    fToast!.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShowDialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(
                widget.journalModel.target.avatar,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                widget.journalModel.target.name,
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
                '${widget.journalModel.target.name} recommends\n With your first purchase'
                '\nYou will get a 30% discount',
                style: const TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InActiveButton(
                text: 'Save the Card',
                onPressed: () {
                  Navigator.of(context).pop();
                  _showToast();
                },
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
