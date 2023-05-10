import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class StoreName extends StatelessWidget {
  const StoreName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.storefront_outlined,
          color: AppColor.secondaryColor,
          size: 18,
        ),
        SizedBox(width: 8.w),
        Text(
          "Thrifting_Store",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: AppColor.secondaryColor,
          ),
        )
      ],
    );
  }
}
