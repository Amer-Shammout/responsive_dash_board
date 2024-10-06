import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeChartModel> items = [
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
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: List.generate(
        items.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: ItemDetails(incomeChartModel: items[index]),
          );
        },
      ),
    );
    // ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context,index){
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 12.0),
    //       child: ItemDetails(incomeChartModel: items[index]),
    //     );
    //   },
    // );
  }
}
