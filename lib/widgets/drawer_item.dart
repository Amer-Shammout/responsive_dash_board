import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItem, required this.isActive});

  final DrawerItemModel drawerItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: InActiveDrawerItem(drawerItem: drawerItem),
        secondChild: ActiveDrawerItem(drawerItem: drawerItem),
        crossFadeState:
            isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 400));
  }
}
