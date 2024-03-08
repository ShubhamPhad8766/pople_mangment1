import 'package:flutter/material.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/widgets/custom_text.dart';

class CustomFootter extends StatelessWidget {
  const CustomFootter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'Powerd by',
          fontsize: 12.0,
          color: AppColors.grayColor,
        ),
        CustomText(
          text: 'the baap company',
          fontsize: AppSizes.getPhoneSize(context, 15.0),
          color: AppColors.blackColor,
          fontweight: FontWeight.bold,
        )
      ],
    );
  }
}
