import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineDiagramWidget extends StatelessWidget {
  const LineDiagramWidget({
    Key? key,
    required ZoomPanBehavior zoomPanBehavior,
    required TooltipBehavior tooltipBehavior,
    required this.chartData,
    required this.colorDiagram,
    this.colorMarker,
  })  : _zoomPanBehavior = zoomPanBehavior,
        _tooltipBehavior = tooltipBehavior,
        super(key: key);

  final ZoomPanBehavior _zoomPanBehavior;
  final TooltipBehavior _tooltipBehavior;
  final List<ChartData> chartData;
  final Color colorDiagram;
  final Color? colorMarker;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      zoomPanBehavior: _zoomPanBehavior,
      tooltipBehavior: _tooltipBehavior,
      trackballBehavior: TrackballBehavior(),
      primaryXAxis: CategoryAxis(
        visibleMaximum: 5,
      ),
      primaryYAxis: NumericAxis(),
      series: [
        SplineSeries<ChartData, String>(
          color: colorDiagram,
          dataSource: chartData,
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
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
}

class BubbleChartData {
  BubbleChartData(
    this.x,
    this.y,
    this.pointColorMapper,
    this.bubbleSize,
  );
  final String x;
  final double y;
  final Color pointColorMapper;
  final double bubbleSize;
}
