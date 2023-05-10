import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/model/local_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../core/util/custom_colors.dart';

class ReviewRating extends StatelessWidget {
  final Products data;
  const ReviewRating({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '4.9',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.w),
                const Text(
                  '/ 5.0',
                  style: TextStyle(color: AppColor.secondaryColor),
                ),
              ],
            ),
            RatingBar.builder(
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              unratedColor: AppColor.avatarColor,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: AppColor.rateColor,
              ),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(height: 30.h),
            const Text(
              '2.3k+ Reviews',
              style: TextStyle(
                  color: AppColor.secondaryColor, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...data.rating!
                  .map((review) => Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: AppColor.rateColor,
                            ),
                            SizedBox(width: 5.w),
                            Text((data.rating!.reversed.toList().indexOf(review) + 1).toString()),
                            Expanded(
                              flex: 5,
                              child: LinearPercentIndicator(
                                lineHeight: 10.0,
                                percent: (review.percentage! / 100),
                                progressColor: AppColor.primaryColor,
                                barRadius: Radius.circular(5.r),
                              ),
                            ),
                            Flexible(child: Text(review.reviews!)),
                          ],
                        ),
                      ))
                  .toList()
            ],
          ),
        )
      ],
    );
  }
}
