import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GrowthChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Growth Chart')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(1, 3),
                  FlSpot(2, 4),
                  FlSpot(3, 5),
                  FlSpot(4, 4.5),
                  FlSpot(5, 6),
                ],
                isCurved: true,
                colors: [Colors.teal],
                barWidth: 4,
                dotData: FlDotData(show: true),
              ),
            ],
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(show: true),
          ),
        ),
      ),
    );
  }
}
