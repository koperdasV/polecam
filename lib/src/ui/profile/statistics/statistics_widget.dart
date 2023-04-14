import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_history.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_method.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';
import 'package:polec/src/ui/profile/statistics/components/row_payout_card.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/payout_page.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/summary_page.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleWidget(
            title: r'To payout: x.xx$',
            subTitle: 'More',
            fontSizeTitle: 20,
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const PayoutPage(),
                ),
              );
            },
          ),
          const RowPayoutCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            child: InActiveButton(
              height: 50,
              fontSize: 24,
              text: 'Payout',
              onPressed: () => payoutMethod(context),
              gradient: AppColor.payoutButton,
              borderRadius: 20,
            ),
          ),
          TitleWidget(
            title: r'Summary: x.xx$',
            subTitle: 'More',
            fontSizeTitle: 20,
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const SummaryPage(),
                ),
              );
            },
          ),
          const RowPayoutCard(),
          const TitleWidget(
            title: 'Your recommendations',
            fontSizeTitle: 18,
          ),
          const CustomProgressIndicator(),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: TitleWidget(
              title: 'Payout history',
            ),
          ),
          const PayoutHistory(),
        ],
      ),
    );
  }
}
