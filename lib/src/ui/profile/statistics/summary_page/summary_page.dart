import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CupertinoNavBar(
            title: 'Summary',
          ),
          const TitleWidget(
            title: 'Period: 6 months',
            fontSizeTitle: 16,
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
          // LineDiagramWidget(
          //   zoomPanBehavior: zoomPanBehavior,
          //   tooltipBehavior: tooltipBehavior,
          //   chartData: chartData,
          //   colorDiagram: colorDiagram,
          // )
        ],
      ),
    );
  }
}
