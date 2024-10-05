import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 24,
        child: Column(
          children: [
            IncomeSectionHeader(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: IncomeChart(),
                  ),
                  SizedBox(width: 50,),
                  Expanded(
                    flex: 1,
                    child: IncomeDetails(),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
