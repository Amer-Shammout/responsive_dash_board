import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imagecolor,
      this.imageBackgroundcolor});

  final String image;
  final Color? imagecolor;
  final Color? imageBackgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackgroundcolor ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imagecolor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 24,
            color: imagecolor ?? const Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
