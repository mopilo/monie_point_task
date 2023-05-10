import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class CustomDivider extends StatelessWidget{
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: const Divider(
        color: AppColor.dividerColor,
        height: 3,
        thickness: 2,
      ),
    );
  }

}