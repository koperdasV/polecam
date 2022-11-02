import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/list_widget.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/title_widget.dart';
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
      ChartData('April', 20),
      ChartData('May', 3),
      ChartData('June', 35),
      ChartData('July', 10),
      ChartData('August', 33),
      ChartData('September', 28),
      ChartData('October', 36),
      ChartData('November', 3),
      ChartData('December', 35),
      ChartData('January', 10),
      ChartData('February', 33),
      ChartData('Mart', 28),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          LineDiagramWidget(
            zoomPanBehavior: _zoomPanBehavior,
            tooltipBehavior: _tooltipBehavior,
            chartData: chartData,
            colorDiagram: AppColor.textButtonColor,
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
