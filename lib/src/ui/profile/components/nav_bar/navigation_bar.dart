import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/feature/profile/provider/profile_provider.dart';
import 'package:polec/src/ui/profile/account/cubit/account_cubit.dart';
import 'package:polec/src/ui/profile/account/main_account.dart';
import 'package:polec/src/ui/profile/level/level_widget.dart';
import 'package:polec/src/ui/profile/statistics/statistics_widget.dart';
import 'package:polec/theme/app_colors.dart';
import 'package:provider/provider.dart';

enum Account {
  statistics,
  level,
  account,
}

class ProfileNavigationBar extends StatefulWidget {
  const ProfileNavigationBar({
    super.key,
  });

  @override
  State<ProfileNavigationBar> createState() => _ProfileNavigationBarState();
}

class _ProfileNavigationBarState extends State<ProfileNavigationBar> {
  Map<Account, Widget> accountWidget = <Account, Widget>{
    Account.statistics: const StatisticsWidget(),
    Account.level: const LevelWidget(),
    Account.account: MainAccountWidget(),
  };
  Account selectedSegment = Account.statistics;

  void setScreen(Account index) {
    setState(() {
      selectedSegment = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SlidingBarProvider>().account;
    setScreen(provider);
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 9, top: 20, bottom: 15),
            child: SizedBox(
              width: double.infinity,
              child: BlocBuilder<AccountCubit, AccountEditState>(
                builder: (context, state) {
                  return CupertinoSlidingSegmentedControl<Account>(
                    backgroundColor: AppColors.bgAccountPage,
                    thumbColor: const Color(0xffffffff),
                    // This represents the currently selected segmented control.
                    groupValue: selectedSegment,
                    // Callback that sets the selected segmented control.
                    onValueChanged: (Account? value) {
                      if (value != null) {
                        Provider.of<SlidingBarProvider>(
                          context,
                          listen: false,
                        ).updateSegment(value);
                      }
                      if (value == Account.account) {
                        Provider.of<SlidingBarProvider>(
                          context,
                          listen: false,
                        ).visibleMarker(visible: true);
                      }
                      if (value == Account.level ||
                          value == Account.statistics) {
                        Provider.of<SlidingBarProvider>(
                          context,
                          listen: false,
                        ).visibleMarker();
                        context
                            .read<AccountCubit>()
                            .editingAcc(editingAccount: false);
                      }
                    },
                    children: <Account, Widget>{
                      Account.statistics: buildSegment('Statistics'),
                      Account.level: buildSegment('Level'),
                      Account.account: buildSegment('Account'),
                    },
                  );
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
      style: const TextStyle(
        color: CupertinoColors.black,
      ),
    );
  }
}
