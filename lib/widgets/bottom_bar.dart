import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor:  AppColor.secondaryColor,
          selectedItemColor: AppColor.primaryColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: AppColor.primaryColor,),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number_outlined, color: AppColor.secondaryColor,),
                label: 'Voucer'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_outlined, color: AppColor.secondaryColor),
                label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.brightness_low, color: AppColor.secondaryColor),
                label: 'Settings'),
          ]),
    );
  }
}
