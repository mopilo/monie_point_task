import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFFDB9239),
                size: 18,
              ),
              SizedBox(width: 5.w),
              Text(
                "4.9 Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: AppColor.secondaryColor),
              )
            ],
          ),
          const Icon(
            Icons.fiber_manual_record,
            color: AppColor.secondaryColor,
            size: 7,
          ),
          Text(
            "2.3k+ Reviews",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: AppColor.secondaryColor),
          ),
          const Icon(
            Icons.fiber_manual_record,
            color: AppColor.secondaryColor,
            size: 5,
          ),
          Text(
            "2.9+ Sold",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: AppColor.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
