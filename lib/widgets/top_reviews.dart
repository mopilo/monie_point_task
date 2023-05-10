import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';
import 'package:moniepoint_assessment/model/local_model.dart';
import 'package:moniepoint_assessment/widgets/custom_divider.dart';
import 'package:moniepoint_assessment/widgets/title.dart';

class TopReview extends StatelessWidget {
  final Products data;
  const TopReview({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailsTitle(title: "Top Reviews"),
                SizedBox(height: 15.h),
                const Text(
                  "Showing 3 of 2.3k+ reviews",
                  style: TextStyle(color: AppColor.secondaryColor),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: AppColor.dividerColor,
                border: Border.all(color: AppColor.avatarColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: 'Popular',
                  items: ['Popular'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                          margin: EdgeInsets.only(right: 30.w),
                          child: Text(
                            value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          )),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        ...data.topReviews!
            .map((review) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          review.name!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(Icons.star,
                            color: AppColor.rateColor, size: 18),
                        Container(
                          margin: EdgeInsets.only(left: 5.w, right: 8.w),
                          child: const Text(
                            "5.0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      height: 60.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...review.reviews!
                              .map(
                                (info) => Container(
                                  margin: EdgeInsets.only(right: 8.w),
                                  child: Chip(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    padding: EdgeInsets.zero,
                                    label: Text(
                                      info,
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    backgroundColor:
                                        AppColor.primaryColor.withOpacity(.2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: AppColor.primaryColor),
                                    ),
                                  ),
                                ),
                              )
                              .toList()
                        ],
                      ),
                    ),
                    Text(
                      'According to my expectations. This is the best.\nThank you',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        const Icon(Icons.thumb_up_rounded,
                            color: AppColor.primaryColor, size: 18),
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: Text(
                            "Helpful ?",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                                color: AppColor.primaryColor),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Yesterday",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                              color: AppColor.secondaryColor),
                        ),
                      ],
                    ),
                    const CustomDivider()
                  ],
                ))
            .toList()
      ],
    );
  }
}
