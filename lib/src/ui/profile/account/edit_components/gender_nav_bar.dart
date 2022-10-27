// ignore_for_file: unnecessary_statements

import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/theme/app_colors.dart';

class GenderNavBar extends StatefulWidget {
  const GenderNavBar({super.key});

  @override
  State<GenderNavBar> createState() => _GenderNavBarState();
}

class _GenderNavBarState extends State<GenderNavBar> {
  int? _selectedSegment = 0;
  // final String genderMale = 'Male';
  // final String genderFemale = 'Female';

  final titleTextStyle = TextStyle(
    fontSize: 14,
    color: AppColor.titleColor,
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl<int>(
          backgroundColor: AppColors.bgAccountPage,
          thumbColor: const Color(0xffffffff),
          // This represents the currently selected segmented control.
          groupValue: _selectedSegment,
          // Callback that sets the selected segmented control.
          onValueChanged: (_selectedSegment) {
            setState(
              () {
                this._selectedSegment = _selectedSegment;
              },
            );
          },
          children: {
            0: buildSegment(
              'Male',
            ),
            1: buildSegment(
              'Female',
            ),
          }),
    );
  }

  Widget buildSegment(String text) {
    return SizedBox(
      width: 80,
      child: Center(
        child: Text(
          text,
          style: titleTextStyle,
        ),
      ),
    );
  }
}
