import 'dart:math';

import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/list_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/toltip_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MoneybackScreen extends StatefulWidget {
  const MoneybackScreen({super.key});

  @override
  State<MoneybackScreen> createState() => _MoneybackScreenState();
}

class _MoneybackScreenState extends State<MoneybackScreen> {
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
    final chartData = <ChartData>[
      ChartData('Apr', random.nextDouble() * 40),
      ChartData('May', random.nextDouble() * 40),
      ChartData('June', random.nextDouble() * 40),
      ChartData('July', random.nextDouble() * 40),
      ChartData('Aug', random.nextDouble() * 40),
      ChartData('Sept', random.nextDouble() * 40),
      ChartData('Oct', random.nextDouble() * 40),
      ChartData('Nov', random.nextDouble() * 40),
      ChartData('Dec', random.nextDouble() * 40),
      ChartData('Jan', random.nextDouble() * 40),
      ChartData('Feb', random.nextDouble() * 40),
      ChartData('Mar', random.nextDouble() * 40),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          LineDiagramWidget(
            zoomPanBehavior: _zoomPanBehavior,
            tooltipBehavior: _tooltipBehavior,
            chartData: chartData,
            colorDiagram: AppColor.textButtonColor,
            colorMarker: AppColor.textButtonColor,
          ),
          const TitleWidget(
            title: 'Moneyback',
            fontSizeTitle: 16,
            subTitle: r'76.38$',
          ),
          const ListWidget(
            name: 'Astoria',
            money: r'15.75$',
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
