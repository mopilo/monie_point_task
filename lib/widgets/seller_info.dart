import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';

class SellerInfo extends StatelessWidget {
  const SellerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: AppColor.avatarColor,
              radius: 30.r,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Thrifting \nStore.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 5,
              child: Container(
                height: 15.h,
                width: 15.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.avatarColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Thrifting_Store.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                "Active 5 Min ago.   |   97.6% Positive Feedback.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                  color: AppColor.secondaryColor,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: AppColor.primaryColor),
                  borderRadius: BorderRadius.circular(5.r)
                )
            ),
              onPressed: (){}, child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.storefront_outlined, color: AppColor.primaryColor, size: 18,),
                    SizedBox(width: 10.w),
                    Text(
                        "Visit Store",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: AppColor.primaryColor,
                        ),
                      ),
                  ],
                ),
              ))
          ],
        )
      ],
    );
  }
}
