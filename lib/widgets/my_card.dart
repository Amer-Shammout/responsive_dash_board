import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/card_background.png',
            ),
            fit: BoxFit.fill,
          ),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Name card',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle:
                    const Text('Syah Bandi', style: AppStyles.styleMedium20),
                trailing: SvgPicture.asset(
                  Assets.imagesGallery,
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '12/20',
                        style: AppStyles.styleRegular16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '-',
                        style: AppStyles.styleRegular16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '124',
                        style: AppStyles.styleRegular16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            )
          ],
        ),
      ),
    );
  }
}
