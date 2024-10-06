import 'package:flutter/material.dart';
import 'package:murshid/core/utils/app_strings.dart';
import 'package:murshid/core/utils/app_text_styles.dart';
import 'package:murshid/core/widgets/custom_check_box.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: AppStrings.iHaveAgreeToOur,
            style: CustomTextStyles.poppins400style12,
          ),
          TextSpan(
            text: AppStrings.termsAndCondition,
            style: CustomTextStyles.poppins400style12.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ])),
      ],
    );
  }
}
