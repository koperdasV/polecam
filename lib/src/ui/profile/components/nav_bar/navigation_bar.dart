import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/profile/account/main_account.dart';
import 'package:polec/src/ui/profile/components/profile_app_bar.dart';
import 'package:polec/src/ui/profile/level/level_widget.dart';
import 'package:polec/src/ui/profile/statistics/statistics_widget.dart';
import 'package:polec/theme/app_colors.dart';

enum Account {
  statistics,
  level,
  account,
}

Map<Account, Widget> accountWidget = <Account, Widget>{
  Account.statistics: const StatisticsWidget(),
  Account.level: const LevelWidget(),
  Account.account: MainAccountWidget(),
};
   Account selectedSegment = Account.statistics;
class ProfileNavigationBar extends StatefulWidget {
  const ProfileNavigationBar({
    super.key,

  });



  @override
  State<ProfileNavigationBar> createState() => _ProfileNavigationBarState();
}

class _ProfileNavigationBarState extends State<ProfileNavigationBar> {
  @override
  Widget build(BuildContext context) {
    // Account _selectedSegment = widget.selectedSegment;
    // final profileNav = context.read<ProfileAppBar>();
    // editAcc() {
    //   if (_selectedSegment == Account.statistics &&
    //       _selectedSegment == Account.level) {
    //     profileNav.stateEditAcc = false;
    //     profileNav.stateCloseAcc = false;
    //   } else {
    //     profileNav.stateEditAcc = true;
    //   }
    // }

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl<Account>(
                backgroundColor: AppColors.bgAccountPage,
                thumbColor: const Color(0xffffffff),
                // This represents the currently selected segmented control.
                groupValue: selectedSegment,
                // Callback that sets the selected segmented control.
                onValueChanged: (Account? value) {
                  if (value != null) {
                    setState(
                      () {
                       selectedSegment = value;
                      },
                    );
                  }
                },
                children: <Account, Widget>{
                  Account.statistics: buildSegment('Statistics'),
                  Account.level: buildSegment('Level'),
                  Account.account: buildSegment('Account'),
                },
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: accountWidget[selectedSegment],
            ),
          ),
        ],
      ),
    );
  }

  Text buildSegment(String title) {
    return Text(
      title,
      style: const TextStyle(color: CupertinoColors.black),
    );
  }
}
