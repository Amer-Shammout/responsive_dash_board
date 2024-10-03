import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> users = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
         UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
        UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map((e) => IntrinsicWidth(child: UserInfoListTile(user: e))).toList()
      ),
    );
    //  SizedBox(
    //   height: 72,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: users.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           user: users[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
