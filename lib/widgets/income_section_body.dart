import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= SizeConfig.desktop &&
            MediaQuery.sizeOf(context).width < 2009
        ? const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              SizedBox(
                width: 50,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          );
  }
}
