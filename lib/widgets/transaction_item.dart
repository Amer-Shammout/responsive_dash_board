import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(
              0xFFAAAAAA,
            ),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
