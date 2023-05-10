import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/widgets/grid_item.dart';
import 'package:moniepoint_assessment/widgets/title.dart';

import '../core/data/data.dart';
import '../core/util/custom_colors.dart';
import '../model/local_model.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    var data = LocalData.fromJson(localData);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const DetailsTitle(title: "Recommendations"),
            Text(
              'See more',
              style: TextStyle(color: AppColor.primaryColor, fontSize: 12.sp),
            )
          ],
        ),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 0.7,
          children: List.generate(2, (index) {
            return GridItem(img: data.products![index].mainImage!);
          }),
        )
      ],
    );
  }
}
