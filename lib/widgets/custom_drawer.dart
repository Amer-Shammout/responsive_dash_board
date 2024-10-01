import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesProfileAvatar,
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
          Spacer(),
          InActiveDrawerItem(
            drawerItem: DrawerItemModel(
              title: "Setting system",
              image: Assets.imagesSetting,
            ),
          ),
          InActiveDrawerItem(
            drawerItem: DrawerItemModel(
              title: "Logout account",
              image: Assets.imagesLogout,
            ),
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
