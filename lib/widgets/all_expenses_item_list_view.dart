import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: AllExpensesItem(
              isSelected: currentIndex == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
    //  Row(
    //   //  children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
    //   children: items.asMap().entries.map(
    //     (e) {
    //       int index = e.key;
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               currentIndex = index;
    //             });
    //           },
    //           child: AllExpensesItem(
    //             isSelected: currentIndex == index,
    //             itemModel: e.value,
    //           ),
    //         ),
    //       );
    //     },
    //   ).toList(),
    // );
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return AllExpensesItem(
    //       itemModel: items[index],
    //     );
    //   },
    // );
  }
}
