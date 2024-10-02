import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackgroundcolor:Colors.white.withOpacity(0.10000000149011612),
            image: itemModel.image,
            imagecolor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(itemModel.title, style: AppStyles.styleSemiBold16.copyWith(color: Colors.white)),
          const SizedBox(
            height: 8,
          ),
          Text(itemModel.date, style: AppStyles.styleRegular14.copyWith(color: Color(0xfffafafa))),
          const SizedBox(
            height: 16,
          ),
          Text(itemModel.price, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
