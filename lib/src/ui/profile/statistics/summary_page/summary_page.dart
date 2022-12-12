import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/toltip_widget.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/bubble_chart.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/list_charts.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/spider_chart.dart';
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
      color: Colors.white,
      enable: true,
      builder: (data, point, series, pointIndex, seriesIndex) {
        final pointY = point.y as double;
        return tooltipBuild(pointY);
      },
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
    final spiderData = [
      BubbleChartDataEntry(
        value: 32,
        label: r'Pawel (125.35$)',
        colors: AppColor.blueBall,
      ),
      BubbleChartDataEntry(
        value: 20,
        label: r'Dawid (125.35$)',
        colors: AppColor.purpleBall,
      ),
      BubbleChartDataEntry(
        value: 18,
        label: r'Ewelina (125.35$)',
        colors: AppColor.pinkBall,
      ),
      BubbleChartDataEntry(
        value: 25,
        label: r'Joanna (125.35$)',
        colors: AppColor.yellowBall,
      ),
      BubbleChartDataEntry(
        value: 24,
        label: r'Sebastian (125.35$)',
        colors: AppColor.greenBall,
      ),
      BubbleChartDataEntry(
        value: 26,
        label: r'Robert (125.35$)',
        colors: AppColor.redBall,
      ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 310,
                child: BubbleChart(
                  data: spiderData,
                ),
              ),
            ),
            const TitleWidget(
              title: 'Recommendation',
              fontSizeTitle: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 310,
                child: BubbleChart(
                  data: spiderData,
                ),
              ),
            ),
            const TitleWidget(
              title: 'Income by category',
              fontSizeTitle: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 310,
                child: SpiderChart(
                  data: const [
                    32,
                    26,
                    10,
                    23,
                    14,
                    32,
                    14,
                    21,
                  ],
                  colors: const [
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.green,
                  ],
                  labels: const [
                    r'Travels (125.35$)',
                    r'Food (125.35$)',
                    r'Party (125.35$)',
                    r'Beauty (125.35$)',
                    r'Health (125.35$)',
                    r'Pets (125.35$)',
                    r'Sport (125.35$)',
                    r'Clothes (125.35$)',
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
