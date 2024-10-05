import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeChartModel>items = const [
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
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ItemDetails(incomeChartModel: items[index]),
        );
      },
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeChartModel});

  final IncomeChartModel incomeChartModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeChartModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeChartModel.title!,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        '${incomeChartModel.value}%',
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
