import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:polec/theme/app_colors.dart';

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
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: CupertinoButton(
            color: Colors.transparent,
            padding: EdgeInsets.zero,
            child: const Icon(
              Icons.calendar_month_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              _showDialog(
                CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  use24hFormat: true,
                  // This is called when the user changes the date.
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() => lastDateTime = newDate);
                  },
                ),
              );
            },
          ),
        ),
        Text(
          DateFormat('dd MMMM yyyy')
              .format(DateTime.parse(lastDateTime.toString())),
          style: const TextStyle(
              color: AppColors.editPlaceholderAcc,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: MediaQuery.of(context).size.height / 3,
        padding: const EdgeInsets.only(top: 6),
        // The Bottom margin is provided
        //to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }
}
