import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/model/local_model.dart';

class ImageReview extends StatelessWidget {
  final Products data;
  const ImageReview({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...data.imageReview!
              .take(3)
              .map(
                (img) => imageContainer(img),
              )
              .toList(),
          Stack(children: [imageContainer(data.imageReview!.last),
           Container(
              height: 80.h,
              width: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.black38,
              ),
              child: const Center(
                child: Text(
                  '132+',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  
                ),
              ),
            )
          ])
        ],
      ),
    );
  }

  Widget imageContainer(img) {
    return Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(right: 20.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.network(
            img,
            height: 80.0,
            width: 80.0,
            fit: BoxFit.cover,
          ),
        ),);
  }
}
