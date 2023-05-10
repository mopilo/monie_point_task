import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';

class ShippingInformation extends StatelessWidget {
  final String title;
  final String subTitle;
  const ShippingInformation({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title:",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
        ),
        SizedBox(width: 10.w),
        Text(
          subTitle,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp, color: AppColor.secondaryColor),
        )
      ],
    );
  }
}
