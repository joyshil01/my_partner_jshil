import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vendor/res/mediaQuery.dart';

class Pie_Card extends StatefulWidget {
  // const Pie_Card({Key? key}) : super(key: key);

  @override
  State<Pie_Card> createState() => _Pie_CardState();
}

class _Pie_CardState extends State<Pie_Card> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          top: SizeVariables.getHeight(context) * 0.05,
        ),
        height: SizeVariables.getHeight(context) * 0.1,
        child: PieChart(
          PieChartData(
            borderData: FlBorderData(show: false),
            startDegreeOffset: 270.0,
            sectionsSpace: 1,
            centerSpaceRadius: 60,
            //centerSpaceColor: Color.fromARGB(255, 33, 33, 33),
            centerSpaceColor: Theme.of(context).scaffoldBackgroundColor,
            sections: [
              PieChartSectionData(
                  color: Color.fromARGB(255, 147, 146, 146),
                  showTitle: false,
                  // title: provider['upcoming'].length.toString(),
                  // value:
                  radius: 22,
                  titleStyle: const TextStyle(fontSize: 15)),
              PieChartSectionData(
                color: Color(0xfff003060),
                showTitle: false,
                // title: totalLeavesProvider.toString(),
                // value: totalLeavesProvider,
                radius: 22,
                titleStyle: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}