import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class DescriptionItem extends StatelessWidget{
  final String text;

  const DescriptionItem({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '●',
            style: TextStyle(color: AppColor.secondaryColor, height: 1.4.h),
          ),
          SizedBox(width: 7.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: AppColor.secondaryColor,
                height: 1.5.h,
              ),
            ),
          )
        ],
      ),
    );
  }

}

