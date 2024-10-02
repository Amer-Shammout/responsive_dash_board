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
        Container(
          padding: EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration:  ShapeDecoration(
            color: imageBackgroundcolor ?? Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image , colorFilter: ColorFilter.mode(imagecolor ?? Color(0xff4EB7F2), BlendMode.srcIn),),
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
