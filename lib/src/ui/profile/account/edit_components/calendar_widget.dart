import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:polec/resources/colors.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime lastDateTime = DateTime(
    DateTime.now().year - 18,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Colors.transparent,
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        DateFormat('dd MMMM yyyy').format(
          DateTime.parse(lastDateTime.toString()),
        ),
        style: TextStyle(
          color: AppColor.subTitleColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      onPressed: () {
        if (Platform.isIOS) {
          _showDialog(
            CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.date,
              use24hFormat: true,
              onDateTimeChanged: (DateTime newDate) {
                setState(() => lastDateTime = newDate);
              },
            ),
          );
        } else if (Platform.isAndroid) {
          showDatePicker(
            context: context,
            initialDate: DateTime(1930),
            firstDate: DateTime(1930),
            lastDate: DateTime(2005),
          ).then((newDate) {
            if (newDate != null) {
              setState(() => lastDateTime = newDate);
            }
          });
        }
      },
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: MediaQuery.of(context).size.height / 3,
        padding: const EdgeInsets.only(top: 6),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }
}
