import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  final List<IncomeChartModel> items = const [
    IncomeChartModel(
      color: Color(0xFF208BC7),
      value: 40,
    ),
    IncomeChartModel(
      color: Color(0xFF4DB7F2),
      value: 25,
    ),
    IncomeChartModel(
      color: Color(0xFF064060),
      value: 20,
    ),
    IncomeChartModel(
      color: Color(0xFFE2DECD),
      value: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: List.generate(items.length, (index) {
          return PieChartSectionData(
            showTitle: false,
            value: items[index].value,
            radius: activeIndex == index ? 40 : 30,
            color: items[index].color,
          );
        }));
  }
}
