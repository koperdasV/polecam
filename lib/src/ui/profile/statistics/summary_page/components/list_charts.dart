import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

List<SplineSeries<ChartData, String>> listDiagramm(
    List<ChartData> firstChartData,
    List<ChartData> secondChartData,
    List<ChartData> thirdChartData,
    List<ChartData> fourthChartData) {
  return [
    SplineSeries<ChartData, String>(
      color: AppColor.bonusDiagramColor,
      dataSource: firstChartData,
      width: 3,
      enableTooltip: true,
      markerSettings: const MarkerSettings(isVisible: true),
      splineType: SplineType.natural,
      cardinalSplineTension: 0.9,
      xValueMapper: (ChartData data, _) => data.x,
      yValueMapper: (ChartData data, _) => data.y,
    ),
    SplineSeries<ChartData, String>(
      color: AppColor.progressIndicatorColor,
      dataSource: secondChartData,
      width: 3,
      enableTooltip: true,
      markerSettings: const MarkerSettings(isVisible: true),
      splineType: SplineType.natural,
      cardinalSplineTension: 0.9,
      xValueMapper: (ChartData data, _) => data.x,
      yValueMapper: (ChartData data, _) => data.y,
    ),
    SplineSeries<ChartData, String>(
      color: AppColor.subTitleColor,
      dataSource: thirdChartData,
      width: 3,
      enableTooltip: true,
      markerSettings: const MarkerSettings(isVisible: true),
      splineType: SplineType.natural,
      cardinalSplineTension: 0.9,
      xValueMapper: (ChartData data, _) => data.x,
      yValueMapper: (ChartData data, _) => data.y,
    ),
    SplineSeries<ChartData, String>(
      color: AppColor.textButtonColor,
      dataSource: fourthChartData,
      width: 3,
      enableTooltip: true,
      markerSettings: const MarkerSettings(isVisible: true),
      splineType: SplineType.natural,
      cardinalSplineTension: 0.9,
      xValueMapper: (ChartData data, _) => data.x,
      yValueMapper: (ChartData data, _) => data.y,
    ),
  ];
}
