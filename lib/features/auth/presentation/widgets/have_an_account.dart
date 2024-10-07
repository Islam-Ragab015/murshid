import 'package:flutter/material.dart';
import 'package:murshid/core/utils/app_colors.dart';
import 'package:murshid/core/utils/app_text_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1, text2;

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(TextSpan(children: [
          TextSpan(
            text: text1,
            style: CustomTextStyles.poppins400style12,
          ),
          TextSpan(
            text: text2,
            style: CustomTextStyles.poppins400style12
                .copyWith(color: AppColors.lightGrey),
          ),
        ])),
      ),
    );
  }
}
