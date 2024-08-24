import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_work_full/7_covvid_app/lib/colors.dart';

class WeeklyChart extends StatelessWidget {
  var folse = AxisTitles(sideTitles: SideTitles(showTitles: false));
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
            gridData: const FlGridData(
                drawHorizontalLine: false, drawVerticalLine: false),
            barGroups: getBarGroups(),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              leftTitles: folse,
              topTitles: folse,
              rightTitles: folse,
            )),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 12, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: value,
                color: i == 4 ? kPrimaryColor : kInactiveChartColor,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return 'MON';
    case 1:
      return 'TUE';
    case 2:
      return 'WED';
    case 3:
      return 'THU';
    case 4:
      return 'FRI';
    case 5:
      return 'SAT';
    case 6:
      return 'SUN';
    default:
      return '';
  }
}
