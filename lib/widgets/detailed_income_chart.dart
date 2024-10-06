import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  final List<IncomeChartModel> items = const [
    IncomeChartModel(
      title: "Design service",
      color: Color(0xFF208BC7),
      value: 40,
    ),
    IncomeChartModel(
      title: "Design product",
      color: Color(0xFF4DB7F2),
      value: 25,
    ),
    IncomeChartModel(
      title: "Product royalti",
      color: Color(0xFF064060),
      value: 20,
    ),
    IncomeChartModel(
      title: "Other",
      color: Color(0xFFE2DECD),
      value: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        swapAnimationDuration: const Duration(milliseconds: 400),
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
            titlePositionPercentageOffset: activeIndex == index ? (index == 1 ? 2.2 : 1.5)  : null,
            value: items[index].value,
            title: activeIndex == index
                ? items[index].title
                : "%${items[index].value}",
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == index ? null : Colors.white),
            radius: activeIndex == index ? 60 : 50,
            color: items[index].color,
          );
        }));
  }
}
