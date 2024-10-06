import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

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
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${incomeChartModel.value}%',
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
