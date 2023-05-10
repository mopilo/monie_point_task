import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class Pagination extends StatelessWidget {
  const Pagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
              color: AppColor.dividerColor, shape: BoxShape.circle),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 15,
          ),
        ),
        SizedBox(width: 10.w),
        const Text(
          '1',
          style: TextStyle(color: AppColor.primaryColor),
        ),
        SizedBox(width: 10.w),
        const Text(
          '2',
        ),
        SizedBox(width: 10.w),
        const Text(
          '3',
        ),
        SizedBox(width: 10.w),
        const Text(
          '...',
        ),
        SizedBox(width: 10.w),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColor.secondaryColor, width: .1),
              shape: BoxShape.circle),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
        const Spacer(),
        Text(
          'See more',
          style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600, fontSize: 12.sp),
        )
      ],
    );
  }
}
