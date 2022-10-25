import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/components/nav_bar/account_widget.dart';
import 'package:polec/src/ui/profile/components/nav_bar/level_widget.dart';
import 'package:polec/src/ui/profile/statistics/statistics_widget.dart';
import 'package:polec/theme/app_colors.dart';

enum Detail { statistics, level, account }

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
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 30,
              bottom: 10,
            ),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl<Detail>(
                backgroundColor: AppColors.bgControl,
                thumbColor: const Color(0xffffffff),
                // This represents the currently selected segmented control.
                groupValue: _selectedSegment,
                // Callback that sets the selected segmented control.
                onValueChanged: (Detail? value) {
                  if (value != null) {
                    setState(() {
                      _selectedSegment = value;
                    });
                  }
                },
                children: const <Detail, Widget>{
                  Detail.statistics: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Statistics',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  Detail.level: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Level',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  Detail.account: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Account',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
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
}
