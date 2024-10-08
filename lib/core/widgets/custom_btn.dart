import 'package:flutter/material.dart';
import 'package:murshid/core/utils/app_colors.dart';
import 'package:murshid/core/utils/app_text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.color, required this.text, this.onpressed});
  final Color? color;
  final String text;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(text,
              style: CustomTextStyles.poppins500style24
                  .copyWith(color: AppColors.offWhite, fontSize: 18)),
        ));
  }
}
