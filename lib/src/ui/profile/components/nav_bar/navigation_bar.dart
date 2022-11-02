import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/account_widget.dart';
import 'package:polec/src/ui/profile/account/edit_profile_widget.dart';
import 'package:polec/src/ui/profile/level/level_widget.dart';
import 'package:polec/src/ui/profile/statistics/statistics_widget.dart';
import 'package:polec/theme/app_colors.dart';

enum Detail {
  statistics,
  level,
  account,
}

Map<Detail, Widget> detailWidget = <Detail, Widget>{
  Detail.statistics: const StatisticsWidget(),
  Detail.level: const LevelWidget(),
  Detail.account: const AccountWidget(),
};

class ProfileNavigationBar extends StatefulWidget {
  const ProfileNavigationBar({super.key});

  @override
  State<ProfileNavigationBar> createState() => _ProfileNavigationBarState();
}

class _ProfileNavigationBarState extends State<ProfileNavigationBar> {
  Detail _selectedSegment = Detail.statistics;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl<Detail>(
                backgroundColor: AppColors.bgAccountPage,
                thumbColor: const Color(0xffffffff),
                // This represents the currently selected segmented control.
                groupValue: _selectedSegment,
                // Callback that sets the selected segmented control.
                onValueChanged: (Detail? value) {
                  if (value != null) {
                    setState(
                      () {
                        _selectedSegment = value;
                        // bool isVisible() {
                        //   if (value == Detail.account) {
                        //     return true;
                        //   }
                        // }
                      },
                    );
                  }
                },
                children: <Detail, Widget>{
                  Detail.statistics: buildSegment('Statistics'),
                  Detail.level: buildSegment('Level'),
                  Detail.account: buildSegment('Account'),
                },
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: detailWidget[_selectedSegment],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildSegment(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: const TextStyle(color: CupertinoColors.black),
      ),
    );
  }
}

// void changeWidget() {
//   detailWidget.update(Detail.account, (value) => const EditProfileWidget());
// }


// bool isVisible() {
//   Detail val = Detail.account;
//   bool value;
//   if (val == Detail.account) {
//     value = true;
//   } else {
//     value = false;
//   }
//   return value;
// }
