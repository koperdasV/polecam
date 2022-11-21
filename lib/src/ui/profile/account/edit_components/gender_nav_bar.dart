import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/theme/app_colors.dart';

enum Gender {
  male,
  female,
}

Map<Gender, String> genderString = <Gender, String>{
  Gender.male: 'Male',
  Gender.female: 'Female',
};

class GenderNavBar extends StatefulWidget {
  const GenderNavBar({super.key});

  @override
  State<GenderNavBar> createState() => _GenderNavBarState();
}

class _GenderNavBarState extends State<GenderNavBar> {
  Gender _selectedSegment = Gender.male;
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
      child: CupertinoSlidingSegmentedControl<Gender>(
        backgroundColor: AppColors.bgAccountPage,
        thumbColor: const Color(0xffffffff),
        // This represents the currently selected segmented control.
        groupValue: _selectedSegment,
        // Callback that sets the selected segmented control.
        onValueChanged: (Gender? _selectedSegment) {
          if (_selectedSegment != null) {
            setState(
              () {
                this._selectedSegment = _selectedSegment;
              },
            );
          }
          setState(
            () {},
          );
        },
        children: <Gender, Widget>{
          Gender.male: buildSegment('Male'),
          Gender.female: buildSegment('Female'),
        },
        // children: {
        //   0: buildSegment(
        //     'Male',
        //   ),
        //   1: buildSegment(
        //     'Female',
        //   ),
        // }
      ),
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
