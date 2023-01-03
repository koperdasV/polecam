import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_history.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';
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
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const PayoutPage(),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              children: [
                Flexible(
                  child: PayoutCard(
                    titleText: 'Moneyback',
                    summaryText: r'361,26$',
                    decoration: AppColor.moneybackColor,
                  ),
                ),
                Flexible(
                  child: PayoutCard(
                    titleText: 'Recommen-dations',
                    summaryText: r'76,38$',
                    decoration: AppColor.recomendationsColor,
                  ),
                ),
                Flexible(
                  child: PayoutCard(
                    titleText: 'Bonus',
                    summaryText: r'284,88$',
                    decoration: AppColor.bonusColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            child: InActiveButton(
              text: 'Payout funds',
              onPressed: () {},
              gradient: AppColor.payoutButton,
              borderRadius: 20,
            ),
          ),
          TitleWidget(
            title: r'Summary: x.xx$',
            subTitle: 'More',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const SummaryPage(),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              children: [
                Flexible(
                  child: PayoutCard(
                    titleText: 'Moneyback',
                    summaryText: r'406,92$',
                    decoration: AppColor.moneybackColor,
                  ),
                ),
                Flexible(
                  child: PayoutCard(
                    titleText: 'Recommendations',
                    summaryText: r'84,83$',
                    decoration: AppColor.recomendationsColor,
                  ),
                ),
                Flexible(
                  child: PayoutCard(
                    titleText: 'Bonus',
                    summaryText: r'322,09$',
                    decoration: AppColor.bonusColor,
                  ),
                ),
              ],
            ),
          ),
          const TitleWidget(
            title: 'Your recommendation',
            fontSizeTitle: 16,
          ),
          const CustomProgressIndicator(),
          const TitleWidget(title: 'Payout history'),
          const PayoutHistory(),
        ],
      ),
    );
  }
}
