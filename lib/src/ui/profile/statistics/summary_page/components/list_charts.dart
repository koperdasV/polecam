import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

List<SplineSeries<ChartData, String>> listDiagramm(
  List<ChartData> firstChartData,
  List<ChartData> secondChartData,
  List<ChartData> thirdChartData,
  List<ChartData> fourthChartData,
) {
  return [
    splineSeries(
      firstChartData,
      AppColor.bonusDiagramColor,
      AppColor.bonusDiagramColor,
    ),
    splineSeries(
      secondChartData,
      AppColor.progressIndicatorColor,
      AppColor.progressIndicatorColor,
    ),
    splineSeries(
      thirdChartData,
      AppColor.recommendLineColor,
      AppColor.recommendLineColor,
    ),
    splineSeries(
      fourthChartData,
      AppColor.textButtonColor,
      AppColor.textButtonColor,
    ),
  ];
}

SplineSeries<ChartData, String> splineSeries(
  List<ChartData> firstChartData,
  Color colorDiagram,
  Color colorMarker,
) {
  return SplineSeries<ChartData, String>(
    color: colorDiagram,
    dataSource: firstChartData,
    width: 3,
    enableTooltip: true,
    markerSettings: MarkerSettings(
      isVisible: true,
      color: colorMarker,
      height: 12,
      width: 12,
    ),
    splineType: SplineType.natural,
    cardinalSplineTension: 0.9,
    xValueMapper: (ChartData data, _) => data.x,
    yValueMapper: (ChartData data, _) => data.y,
  );
}
