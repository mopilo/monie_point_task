import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/util/custom_colors.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColor.avatarColor))),
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: AppColor.primaryColor,
              labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 14.sp),
              unselectedLabelColor: AppColor.secondaryColor,
              indicatorColor: AppColor.primaryColor,
              unselectedLabelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 14.sp),
              tabs: const [
                Tab(text: "About Item"),
                Tab(
                  text: "Reviews",
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20.h),
        item("Brand", "ChArmkpR", "Color", "Aprikot"),
        SizedBox(height: 15.h),
        item("Category", "Casual Shirt", "Material", "Polyster"),
         SizedBox(height: 15.h),
        item("Condition", "New", "Heavy", "200g"),
      ],
    );
  }

  Widget item(title, subTitle, attribute, attributeValue) {
    return Row(
      children: [
        Flexible(
          child: Row(
            children: [
              Text(
                "$title:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: AppColor.secondaryColor
                  
                  ),
              ),
              SizedBox(width: 10.w),
              Text(
                subTitle,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
              ),
            ],
          ),
        ),
        SizedBox(width: 20.w),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$attribute:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: AppColor.secondaryColor
                  
                  ),
              ),
              SizedBox(width: 10.w),
              Text(
                attributeValue,
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 12.sp),
              )
            ],
          ),
        ),
      ],
    );
  }
}
