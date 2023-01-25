import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';

class RowPayoutCard extends StatelessWidget {
  const RowPayoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        children: [
          Flexible(
            child: PayoutCard(
              titleText: 'Moneyback',
              summaryText: r'406.92$',
              decoration: AppColor.moneybackColor,
            ),
          ),
          Flexible(
            child: PayoutCard(
              titleText: 'Recommen-dations',
              summaryText: r'84.83$',
              decoration: AppColor.recomendationsColor,
            ),
          ),
          Flexible(
            child: PayoutCard(
              titleText: 'Bonus',
              summaryText: r'322.09$',
              decoration: AppColor.bonusColor,
            ),
          ),
        ],
      ),
    );
  }
}
