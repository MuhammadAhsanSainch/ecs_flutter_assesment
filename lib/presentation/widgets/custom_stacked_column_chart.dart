import 'package:flutter/material.dart';
/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

class StackColumnChart extends StatelessWidget {
  StackColumnChart({Key? key}) : super(key: key);

  final List<ChartData> chartData = [
    ChartData("Mon", 202, 430, 920),
    ChartData("Tue", 431, 530, 830),
    ChartData("Wed", 522, 303, 603),
    ChartData("Thu", 183, 360, 203),
    ChartData("Fri", 647, 306, 901),
    ChartData("Sat", 373, 830, 170),
    ChartData("Sun", 449, 370, 450),
  ];

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
        title: AxisTitle(text: 'This Week'),
      ),
      primaryYAxis: NumericAxis(
        title: AxisTitle(text: 'Attendance'),
      ),
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.top,
      ),
      series: <ChartSeries>[
        StackedColumnSeries<ChartData, String>(
            name: "Absents",

            color: const Color(0xff28BF5B),
            dataSource: chartData,
            xValueMapper: (ChartData ch, _) => ch.x,
            yValueMapper: (ChartData ch, _) => ch.y1),
        StackedColumnSeries<ChartData, String>(
          name: "Late",
          color: const Color(0xffFFC107),
          dataSource: chartData,
          xValueMapper: (ChartData ch, _) => ch.x,
          yValueMapper: (ChartData ch, _) => ch.y2,
        ),
        StackedColumnSeries<ChartData, String>(
          name: "On-Time",
          color: const Color(0xffFD6C6C),
          dataSource: chartData,
          xValueMapper: (ChartData ch, _) => ch.x,
          yValueMapper: (ChartData ch, _) => ch.y3,
        ),
      ],
    );
  }
}


class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;

  ChartData(this.x, this.y1, this.y2, this.y3);
}



