// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
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
              child: FittedBox(
                child: Text(
                  widget.journalModel.target.name,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
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
                  _offerSaved();
                },
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _offerSaved() {
    MotionToast(
      displaySideBar: false,
      displayBorder: true,
      primaryColor: AppColor.textButtonColor,
      backgroundType: BackgroundType.solid,
      width: 270,
      height: 60,
      toastDuration: const Duration(seconds: 2),
      description: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            CupertinoIcons.check_mark,
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
    ).show(context);
  }
}
