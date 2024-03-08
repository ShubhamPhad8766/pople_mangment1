import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_app/constant/app_colors.dart';
import 'package:my_app/constant/app_size.dart';
import 'package:my_app/controller/bottom_controller.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final BottomNavBarController _bottomController = Get.find();

    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          backgroundColor: AppColors.bodyColor,
          toolbarHeight: 80.0,
          primary: false,
          automaticallyImplyLeading: false,
          actions: [
            Image.asset(
              'images/Rectangle204.png',
              height: AppSizes.getPhoneSize(context, 20.0),
            ),
            SvgPicture.asset(
              'icons/reject.svg',
              color: AppColors.blackColor,
              height: AppSizes.getPhoneSize(context, 20.0),
            ),
          ],
        ),
        // endDrawer: ,
        body: BottomNavigationBar(
            currentIndex: _bottomController.selectedIndex.value,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              _bottomController.changeTabIndex(index);
            },
            selectedIconTheme: const IconThemeData(color: Colors.white),
            items: []),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required int index,
    required String icon,
    required BuildContext context,
  }) {
    return BottomNavigationBarItem(
        icon: Container(
      decoration: const BoxDecoration(),
      padding: EdgeInsets.all(AppSizes.getPhoneSize(context, 8.0)),
    ));
  }
}
