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
      ChartData('April', random.nextDouble() * 40),
      ChartData('May', random.nextDouble() * 40),
      ChartData('June', random.nextDouble() * 40),
      ChartData('July', random.nextDouble() * 40),
      ChartData('August', random.nextDouble() * 40),
      ChartData('September', random.nextDouble() * 40),
      ChartData('October', random.nextDouble() * 40),
      ChartData('November', random.nextDouble() * 40),
      ChartData('December', random.nextDouble() * 40),
      ChartData('January', random.nextDouble() * 40),
      ChartData('February', random.nextDouble() * 40),
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
// <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="88" height="65.001" viewBox="0 0 88 65.001">
//   <defs>
//     <filter id="Объединение_2" x="0" y="0" width="88" height="65.001" filterUnits="userSpaceOnUse">
//       <feOffset input="SourceAlpha"/>
//       <feGaussianBlur stdDeviation="3" result="blur"/>
//       <feFlood flood-color="#0064fe" flood-opacity="0.2"/>
//       <feComposite operator="in" in2="blur"/>
//       <feComposite in="SourceGraphic"/>
//     </filter>
//   </defs>
//   <g transform="matrix(1, 0, 0, 1, 0, 0)" filter="url(#Объединение_2)">
//     <path id="Объединение_2-2" data-name="Объединение 2" d="M30,40H10A10,10,0,0,1,0,30V10A10,10,0,0,1,10,0H60A10,10,0,0,1,70,10V30A10,10,0,0,1,60,40H38l-4,7Z" transform="translate(9 9)" fill="#fff"/>
//   </g>
// </svg>
