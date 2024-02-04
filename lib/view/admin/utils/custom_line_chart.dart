import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sms_application_flutter/view/admin/utils/price_points.dart';

class CustomLineChart extends StatelessWidget {
  final List<PricePoints> points;
  const CustomLineChart(this.points, {super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(lineBarsData: [
          LineChartBarData(
            spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
            isCurved: false,
            dotData: FlDotData(show: true),
          ),
        ]),
        curve: Curves.linear,
      ),
    );
  }
}
