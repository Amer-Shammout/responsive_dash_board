import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
        title: "Cash Withdrawal",
        subTitle: "13 Apr, 2022 ",
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: "Landing Page project",
        subTitle: "13 Apr, 2022 at 3:30 PM ",
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        subTitle: "13 Apr, 2022 at 3:30 PM ",
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionModel: items[index],
        );
      },
    );
  }
}
