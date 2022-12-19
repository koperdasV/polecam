import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/screen/bonus_screen.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/screen/moneyback_screen.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/screen/recommendation_screen.dart';
import 'package:polec/theme/app_colors.dart';

enum Detail {
  moneyback,
  recommendation,
  bonus,
}

Map<Detail, Widget> detailWidget = <Detail, Widget>{
  Detail.moneyback: const MoneybackScreen(),
  Detail.recommendation: const RecommendationScreen(),
  Detail.bonus: const BonusScreen(),
};

class PayoutNavigationBar extends StatefulWidget {
  const PayoutNavigationBar({super.key});

  @override
  State<PayoutNavigationBar> createState() => _PayoutNavigationBarState();
}

class _PayoutNavigationBarState extends State<PayoutNavigationBar> {
  Detail _selectedSegment = Detail.moneyback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                  Detail.moneyback: buildSegment('Moneyback'),
                  Detail.recommendation: buildSegment('Recommendations'),
                  Detail.bonus: buildSegment('Bonus'),
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

  FittedBox buildSegment(String title) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Text(
        title,
        style: const TextStyle(
          color: CupertinoColors.black,
          fontSize: 14,
        ),
        softWrap: false,
      ),
    );
  }
}
