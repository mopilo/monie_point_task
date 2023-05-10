import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';

class TopIcons extends StatelessWidget {
  const TopIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      alignment: Alignment.center,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          items(Icons.dashboard, "Category"),
          items(Icons.flight, "Flight"),
          items(Icons.insert_chart_outlined_sharp, "Bill"),
          items(Icons.public_rounded, "Data plan"),
          items(Icons.monetization_on_outlined, "Top Up"),
        ],
      ),
    );
  }
  Widget items (icon, text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.h, width: 40.w,
            decoration: BoxDecoration(
              color: AppColor.dividerColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(icon, color: AppColor.secondaryColor, size: 20,),
          ),
          SizedBox(height: 10.h),
          Text(text, style: TextStyle(fontSize: 10.sp, color: AppColor.secondaryColor),)
        ],
      ),
    );
  }
}
