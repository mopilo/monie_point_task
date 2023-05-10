import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class SilverTitle extends StatelessWidget {
  const SilverTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: AppColor.dividerColor.withOpacity(0.4),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Best Sale Product",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: Colors.black.withOpacity(.7),
            ),
          ),
          Text(
            'See more',
            style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 14.sp,
            ),
          )
        ],
      ),
    );
  }
}
