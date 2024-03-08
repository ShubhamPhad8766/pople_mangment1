import 'package:flutter/material.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/widgets/custom_text.dart';

class CustomHeder extends StatelessWidget {
  const CustomHeder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: 'Welcome',
            fontsize: AppSizes.getPhoneSize(context, 14),
            color: AppColors.grayColor),
        CustomText(
          text: 'Shubham Phad',
          fontsize: AppSizes.getPhoneSize(context, 18),
          color: AppColors.blackColor,
          fontweight: FontWeight.bold,
        ),
      ],
    );
  }
}
