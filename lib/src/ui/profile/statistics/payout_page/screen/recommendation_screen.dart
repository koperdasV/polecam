import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/list_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
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
      ChartData('April', 97),
      ChartData('May', 10.43),
      ChartData('June', 36.65),
      ChartData('July', 18.36),
      ChartData('August', 75),
      ChartData('September', 167),
      ChartData('October', 140),
      ChartData('November', 47),
      ChartData('December', 90),
      ChartData('January', 30),
      ChartData('February', 170),
      ChartData('Mart', 44),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          LineDiagramWidget(
            zoomPanBehavior: _zoomPanBehavior,
            tooltipBehavior: _tooltipBehavior,
            chartData: chartData,
            colorDiagram: AppColor.categorieTextColor,
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