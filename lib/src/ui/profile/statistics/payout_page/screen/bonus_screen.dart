import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/list_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
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
    _tooltipBehavior = TooltipBehavior(enable: true);
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final chartData = <ChartData>[
      ChartData('April', 199),
      ChartData('May', 71.43),
      ChartData('June', 250.65),
      ChartData('July', 47.36),
      ChartData('August', 48),
      ChartData('September', 167),
      ChartData('October', 140),
      ChartData('November', 3),
      ChartData('December', 55),
      ChartData('January', 214),
      ChartData('February', 33),
      ChartData('Mart', 184),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          LineDiagramWidget(
            zoomPanBehavior: _zoomPanBehavior,
            tooltipBehavior: _tooltipBehavior,
            chartData: chartData,
            colorDiagram: AppColor.bonusDiagramColor,
          ),
          const TitleWidget(
            title: 'Recommendations',
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
