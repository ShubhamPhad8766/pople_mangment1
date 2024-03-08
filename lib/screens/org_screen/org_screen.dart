// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/widgets/custom_heder.dart';
import 'package:my_app/widgets/custom_search_tetfeild.dart';
import 'package:my_app/widgets/custom_sizedbox.dart';
import 'package:my_app/widgets/custom_text.dart';
import 'package:my_app/widgets/fotter_widget.dart';

class OrgScreen extends StatefulWidget {
  const OrgScreen({super.key});

  @override
  State<OrgScreen> createState() => _OrgScreenState();
}

class _OrgScreenState extends State<OrgScreen> {
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
                const Spacer(),
                _centerwidget(context),
                CustomSizedBox(
                  height: AppSizes.getPhoneSize(context, 10.0),
                ),
                Expanded(child: _listContainer(context)),
                const Spacer(),
                const CustomFootter(),
              ],
            )),
      ),
    );
  }
}

_centerwidget(BuildContext context) {
  return Center(
    child: CustomSearch(
      height: AppSizes.getPhoneSize(context, 46),
      width: AppSizes.getPhoneSize(context, 300),
      inputDecoration: const InputDecoration(
          hintText: 'Search your organization',
          contentPadding: EdgeInsets.symmetric(horizontal: 50),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
    ),
  );
}

_listContainer(BuildContext context) {
  return ListView.builder(
    itemCount: 4,
    itemBuilder: (context, index) {
      return Card(
        child: Container(
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/blogo.png',
                    height: AppSizes.getPhoneSize(context, 30.0),
                    width: AppSizes.getPhoneSize(context, 30.0),
                  ),
                  CustomSizedBox(
                    width: AppSizes.getPhoneSize(context, 20.0),
                  ),
                  CustomText(
                    text: 'the baap company',
                    fontsize: AppSizes.getPhoneSize(context, 16),
                    color: AppColors.blackColor,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: AppSizes.getPhoneSize(context, 100.0)),
                child: Center(
                  child: CustomText(
                      text: 'Software Company',
                      fontsize: AppSizes.getPhoneSize(context, 11.0),
                      color: AppColors.grayColor),
                ),
              )
            ]),
          ),
        ),
      );
    },
  );
}
