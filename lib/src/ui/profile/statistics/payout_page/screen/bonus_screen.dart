import 'dart:math';

import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/list_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/toltip_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BonusScreen extends StatefulWidget {
  const BonusScreen({super.key});

  @override
  State<BonusScreen> createState() => _BonusScreenState();
}

class _BonusScreenState extends State<BonusScreen> {
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
      ChartData('Apr', random.nextDouble() * 300),
      ChartData('May', random.nextDouble() * 300),
      ChartData('June', random.nextDouble() * 300),
      ChartData('July', random.nextDouble() * 300),
      ChartData('Aug', random.nextDouble() * 300),
      ChartData('Sept', random.nextDouble() * 300),
      ChartData('Oct', random.nextDouble() * 300),
      ChartData('Nov', random.nextDouble() * 300),
      ChartData('Dec', random.nextDouble() * 300),
      ChartData('Jan', random.nextDouble() * 300),
      ChartData('Feb', random.nextDouble() * 300),
      ChartData('Mar', random.nextDouble() * 300),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          LineDiagramWidget(
            zoomPanBehavior: _zoomPanBehavior,
            tooltipBehavior: _tooltipBehavior,
            chartData: chartData,
            colorDiagram: AppColor.bonusDiagramColor,
            colorMarker: AppColor.bonusDiagramColor,
          ),
          const TitleWidget(
            title: 'Bonus',
            fontSizeTitle: 16,
            subTitle: r'248.88$',
          ),
          const ListWidget(
            name: 'Pawel',
            money: r'43.12$',
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
