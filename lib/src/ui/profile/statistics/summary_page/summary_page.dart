import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/bubble_chart.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/list_charts.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  late TooltipBehavior _tooltipBehavior;
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      color: Colors.white,
      shadowColor: Colors.grey,
      textStyle: TextStyle(
        color: AppColor.categorieTextColor,
      ),
    );
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );

    super.initState();
  }

  final random = Random();

  @override
  Widget build(BuildContext context) {
    final firstChartData = <ChartData>[
      ChartData('April', random.nextDouble() * 300),
      ChartData('May', random.nextDouble() * 300),
      ChartData('June', random.nextDouble() * 300),
      ChartData('July', random.nextDouble() * 300),
      ChartData('August', random.nextDouble() * 300),
      ChartData('September', random.nextDouble() * 300),
    ];
    final secondChartData = <ChartData>[
      ChartData('April', random.nextDouble() * 300),
      ChartData('May', random.nextDouble() * 300),
      ChartData('June', random.nextDouble() * 300),
      ChartData('July', random.nextDouble() * 300),
      ChartData('August', random.nextDouble() * 300),
      ChartData('September', random.nextDouble() * 300),
    ];
    final thirdChartData = <ChartData>[
      ChartData('April', random.nextDouble() * 300),
      ChartData('May', random.nextDouble() * 300),
      ChartData('June', random.nextDouble() * 300),
      ChartData('July', random.nextDouble() * 300),
      ChartData('August', random.nextDouble() * 300),
      ChartData('September', random.nextDouble() * 300),
    ];
    final fourthChartData = <ChartData>[
      ChartData('April', random.nextDouble() * 300),
      ChartData('May', random.nextDouble() * 300),
      ChartData('June', random.nextDouble() * 300),
      ChartData('July', random.nextDouble() * 300),
      ChartData('August', random.nextDouble() * 300),
      ChartData('September', random.nextDouble() * 300),
    ];

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'Summary',
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SfCartesianChart(
                enableAxisAnimation: true,
                zoomPanBehavior: _zoomPanBehavior,
                tooltipBehavior: _tooltipBehavior,
                trackballBehavior: TrackballBehavior(),
                primaryXAxis: CategoryAxis(
                  visibleMaximum: 5,
                ),
                primaryYAxis: NumericAxis(),
                series: listDiagramm(
                  firstChartData,
                  secondChartData,
                  thirdChartData,
                  fourthChartData,
                ),
              ),
            ),
            const TitleWidget(
              title: 'Moneyback',
              fontSizeTitle: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 310,
                child: CustomBubbleChart(),
              ),
            ),
            const TitleWidget(
              title: 'Polecam',
              fontSizeTitle: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 310,
                child: CustomBubbleChart(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
