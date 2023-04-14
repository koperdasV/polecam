import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/components/payout_card.dart';
import 'package:polec/src/ui/profile/statistics/components/progress_indicator.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/toltip_widget.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/bubble_chart.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/list_charts.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/period_picker.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/spider_chart.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/data/data_charts.dart';
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

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'Summary',
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 13),
              child: PeriodPicker(),
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
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TitleWidget(
                title: 'Your recommendations',
                fontSizeTitle: 16,
              ),
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
                  DataCharts.firstChartData,
                  DataCharts.secondChartData,
                  DataCharts.thirdChartData,
                  DataCharts.fourthChartData,
                ),
              ),
            ),
            const TitleWidget(
              title: 'Moneyback',
              fontSizeTitle: 16,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 310,
                child: BubbleChart(
                  data: DataCharts.spiderData,
                ),
              ),
            ),
            const TitleWidget(
              title: 'Recommendations',
              fontSizeTitle: 16,
            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 310,
                child: BubbleChart(
                  data: DataCharts.spiderData,
                ),
              ),
            ),
            const TitleWidget(
              title: 'Income by category',
              fontSizeTitle: 16,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 310,
                child: SpiderChart(
                  data: DataCharts.spiderChart,
                  colors: DataCharts.spiderColorChart,
                  labels: DataCharts.spiderLabelChart,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
