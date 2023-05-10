import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/custom_colors.dart';

class GridItem extends StatelessWidget {
  final String img;
  const GridItem({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Stack(
            children: [
              Container(
                height: 120,
                alignment: Alignment.center,
                child: ClipRRect(
                    child: Image.network(
                  img,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
              ),
              const Positioned(
                right: 5,
                top: 5,
                child: Icon(
                  Icons.favorite_outline_rounded,
                  color: AppColor.secondaryColor,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Shirt',
              style: TextStyle(color: AppColor.secondaryColor, fontSize: 12.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Essential Men's Short Sleeve \nCrewneck T-Shirt",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xFFDB9239),
                  size: 15,
                ),
                SizedBox(width: 3.w),
                Text(
                  "4.9 | 2345",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: AppColor.secondaryColor.withOpacity(.5)),
                ),
                const Spacer(),
                Text(
                  "\$18.00",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}