import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime lastDateTime = DateTime(
      DateTime.now().year - 18, DateTime.now().month, DateTime.now().day,);

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
              showDatePicker(
                context: context,
                initialDate: lastDateTime,
                firstDate: DateTime(1920),
                lastDate: lastDateTime,
              ).then((date) {
                setState(() {
                  lastDateTime = date!;
                });
              });
            },
          ),
        ),
        Text(
          DateFormat('yyyy/MM/dd')
              .format(DateTime.parse(lastDateTime.toString())),
        ),
      ],
    );
  }
}
