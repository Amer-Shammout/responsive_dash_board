import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          hintStyle:
              AppStyles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
          contentPadding: const EdgeInsets.all(20),
          fillColor: const Color(0xFFFAFAFA),
          border: buildBorder(),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFFFAFAFA),
        ));
  }
}
