import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/constant/app_string.dart';
import 'package:my_app/screens/start_screen/start_screen.dart';
import 'package:my_app/widgets/custom_divider.dart';
import 'package:my_app/widgets/custom_heder.dart';
import 'package:my_app/widgets/custom_sizedbox.dart';
import 'package:my_app/widgets/custom_text.dart';
import 'package:my_app/widgets/fotter_widget.dart';

class ConformationSceen extends StatefulWidget {
  const ConformationSceen({super.key});
  @override
  State<ConformationSceen> createState() => _ConformationSceenState();
}

class _ConformationSceenState extends State<ConformationSceen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StartScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(AppSizes.getPhoneSize(context, 20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomHeder(),
              const CustomDivider(),
              const Spacer(),
              Center(
                child: _conformationwidget(context),
              ),
              const Spacer(),
              const CustomFootter(),
            ],
          ),
        ),
      ),
    );
  }
}

_conformationwidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('icons/success.json',
              width: AppSizes.getPhoneSize(context, 130.0),
              height: AppSizes.getPhoneSize(context, 130.0)),
          CustomSizedBox(
            height: AppSizes.getPhoneSize(context, 10.0),
          ),
          CustomText(
              text: AppStrings.confirmationScreenText,
              fontsize: AppSizes.getPhoneSize(context, 16.0),
              color: AppColors.grayColor),
          CustomText(
              text: AppStrings.confirmationScreenText2,
              fontsize: AppSizes.getPhoneSize(context, 16.0),
              color: AppColors.grayColor)
        ],
      ),
    ],
  );
}
