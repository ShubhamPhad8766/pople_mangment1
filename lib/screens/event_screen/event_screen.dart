import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:my_app/widgets/custom_divider.dart';
import 'package:my_app/widgets/custom_heder.dart';
import 'package:my_app/widgets/custom_sizedbox.dart';
import 'package:my_app/widgets/custom_text.dart';
import 'package:my_app/widgets/fotter_widget.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

int _selectedValue = 1;
final items = [
  "Administrator",
  "Security Guard",
  "Cook",
  "IT Staff",
  "Student",
  "Housekeeping"
];

final selectedOption = RxInt(0);

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bodyColor,
        body: Padding(
          padding: EdgeInsets.all(AppSizes.getPhoneSize(context, 20.0)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomHeder(),
            const CustomDivider(),
            _firstwidget(context),
            _radiolistwidget(
              context,
            ),
            CustomSizedBox(
              height: AppSizes.getPhoneSize(context, 50.0),
            ),
            CustomButton(
              onPressed: () {},
              height: AppSizes.getPhoneSize(context, 43.0),
              width: AppSizes.getPhoneSize(context, 281.0),
              text: 'Requsest Access',
              color: AppColors.whiteColor,
              bgcolor: AppColors.blackColor,
              borderRadius: AppSizes.getPhoneSize(context, 10.0),
            ),
            const Spacer(),
            const CustomFootter(),
          ]),
        ),
      ),
    );
  }

  _firstwidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'the baap company',
          fontsize: 28.0,
          color: AppColors.blackColor,
          fontweight: FontWeight.bold,
        ),
        const CustomText(
          text: 'Software Company',
          fontsize: 11.0,
          color: AppColors.grayColor,
        ),
        CustomSizedBox(
          height: AppSizes.getPhoneSize(context, 20),
        ),
        const CustomText(
          text: 'Choose your role to get started',
          fontsize: 16.0,
          color: AppColors.blackColor,
          fontweight: FontWeight.bold,
        ),
        CustomSizedBox(
          height: AppSizes.getPhoneSize(context, 10.0),
        ),
        const CustomDivider(),
      ],
    );
  }

  _radiolistwidget(
    BuildContext context,
  ) {
    return Flexible(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<int>(
                value: index,
                groupValue: selectedOption.value,
                onChanged: (int? value) {
                  setState(() {
                    selectedOption.value = value!;
                  });
                },
              ),
              CustomText(
                text: items[index],
                fontsize: 16.0,
                color: AppColors.grayColor,
                fontweight: FontWeight.w400,
              )
            ],
          );
        },
      ),
    );
  }
}
