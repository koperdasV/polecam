import 'dart:math';

import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/profile/statistics/payout_page/components/line_diagram.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/bubble_chart.dart';

final random = Random();

abstract class DataCharts {
  static List<ChartData> firstChartData = [
    ChartData('April', random.nextDouble() * 300),
    ChartData('May', random.nextDouble() * 300),
    ChartData('June', random.nextDouble() * 300),
    ChartData('July', random.nextDouble() * 300),
    ChartData('August', random.nextDouble() * 300),
    ChartData('September', random.nextDouble() * 300),
  ];
  static List<ChartData> secondChartData = [
    ChartData('April', random.nextDouble() * 300),
    ChartData('May', random.nextDouble() * 300),
    ChartData('June', random.nextDouble() * 300),
    ChartData('July', random.nextDouble() * 300),
    ChartData('August', random.nextDouble() * 300),
    ChartData('September', random.nextDouble() * 300),
  ];
  static List<ChartData> thirdChartData = [
    ChartData('April', random.nextDouble() * 300),
    ChartData('May', random.nextDouble() * 300),
    ChartData('June', random.nextDouble() * 300),
    ChartData('July', random.nextDouble() * 300),
    ChartData('August', random.nextDouble() * 300),
    ChartData('September', random.nextDouble() * 300),
  ];
  static List<ChartData> fourthChartData = [
    ChartData('April', random.nextDouble() * 300),
    ChartData('May', random.nextDouble() * 300),
    ChartData('June', random.nextDouble() * 300),
    ChartData('July', random.nextDouble() * 300),
    ChartData('August', random.nextDouble() * 300),
    ChartData('September', random.nextDouble() * 300),
  ];

//BUBBLE CHART DATA//
  static List<BubbleChartDataEntry> spiderData = [
    BubbleChartDataEntry(
      value: 32,
      label: r'Pawel (125.35$)',
      colors: AppColor.blueBall,
    ),
    BubbleChartDataEntry(
      value: 20,
      label: r'Dawid (125.35$)',
      colors: AppColor.purpleBall,
    ),
    BubbleChartDataEntry(
      value: 18,
      label: r'Ewelina (125.35$)',
      colors: AppColor.pinkBall,
    ),
    BubbleChartDataEntry(
      value: 25,
      label: r'Joanna (125.35$)',
      colors: AppColor.yellowBall,
    ),
    BubbleChartDataEntry(
      value: 24,
      label: r'Sebastian (125.35$)',
      colors: AppColor.greenBall,
    ),
    BubbleChartDataEntry(
      value: 26,
      label: r'Robert (125.35$)',
      colors: AppColor.redBall,
    ),
  ];

//SPIDER CHART DATA//
  static List<double> spiderChart = [
    32,
    26,
    10,
    23,
    14,
    32,
    14,
    21,
  ];

  static List<Color> spiderColorChart = [
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.green,
  ];

  static List<String> spiderLabelChart = [
    r'Travels (125.35$)',
    r'Food (125.35$)',
    r'Party (125.35$)',
    r'Beauty (125.35$)',
    r'Health (125.35$)',
    r'Pets (125.35$)',
    r'Sport (125.35$)',
    r'Clothes (125.35$)',
  ];
}
