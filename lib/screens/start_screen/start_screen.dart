import 'package:flutter/material.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:my_app/widgets/custom_heder.dart';
import 'package:my_app/widgets/custom_sizedbox.dart';
import 'package:my_app/widgets/custom_text.dart';
import 'package:my_app/widgets/fotter_widget.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: Padding(
        padding: EdgeInsets.all(AppSizes.getPhoneSize(context, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeder(),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'People ',
                  fontsize: AppSizes.getPhoneSize(context, 35),
                  color: AppColors.blackColor,
                  fontweight: FontWeight.bold,
                ),
                CustomText(
                  text: 'management on',
                  fontsize: AppSizes.getPhoneSize(context, 35),
                  color: AppColors.blackColor,
                  fontweight: FontWeight.bold,
                ),
                CustomText(
                  text: 'your fingertip  ',
                  fontsize: AppSizes.getPhoneSize(context, 35),
                  color: AppColors.blackColor,
                  fontweight: FontWeight.bold,
                ),
                const CustomSizedBox(
                  height: 10.0,
                ),
                CustomButton(
                    text: 'Start Now',
                    onPressed: () {},
                    color: AppColors.blackColor,
                    bgcolor: null,
                    borderRadius: 20.0),
              ],
            ),
            const Spacer(),
            const CustomFootter()
          ],
        ),
      ),
    ));
  }
}
