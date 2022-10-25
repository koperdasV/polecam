import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_history.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';

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
            onPressed: () {},
          ),
          Row(
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
          TitleWidget(
            title: r'Summary: x.xx$',
            subTitle: 'More',
            onPressed: () {},
          ),
          Row(
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
                  titleText: 'Recommen-dations',
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