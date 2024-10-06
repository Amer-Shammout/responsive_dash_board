// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 0,
            backgroundColor: Color(0xFF4DB7F2),
          ),
          onPressed: () {},
          child: Text(
            'Send Money',
            style: AppStyles.styleSemiBold18(context),
          )),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Add more details',
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: Color(0xFF4EB7F2),
          ),
        ),
      ),
    );
  }
}
