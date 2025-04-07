import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GrowthChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Growth Charts')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Height Growth Chart',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            _buildGrowthChart([
              FlSpot(1, 3),
              FlSpot(2, 4),
              FlSpot(3, 5),
              FlSpot(4, 4.5),
              FlSpot(5, 6),
            ], Colors.teal),

            SizedBox(height: 30),

            Text(
              'Weight Growth Chart',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            _buildGrowthChart([
              FlSpot(1, 2.5),
              FlSpot(2, 3),
              FlSpot(3, 3.8),
              FlSpot(4, 4.2),
              FlSpot(5, 5),
            ], Colors.deepOrange),
          ],
        ),
      ),
    );
  }

  Widget _buildGrowthChart(List<FlSpot> spots, Color color) {
    return SizedBox(
      height: 250,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              colors: [color],
              barWidth: 4,
              dotData: FlDotData(show: true),
            ),
          ],
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 22),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 28),
            ),
          ),
          borderData: FlBorderData(show: true),
        ),
      ),
    );
  }
}
