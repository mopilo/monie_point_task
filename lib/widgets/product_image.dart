import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/model/local_model.dart';

class ProductImage extends StatefulWidget {
  final Products data;
  const ProductImage({super.key, required this.data});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  String? mainImg;
  String? key;

  @override
  void initState() {
    super.initState();
    setState(() {
      mainImg = widget.data.mainImage;
      key = widget.data.imageReview!.indexOf(mainImg!).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 2000),
          child: Container(
            key: Key(key!),
            height: 400,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.network(
                mainImg!,
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 20,
          child: Column(
            children: [
              ...widget.data.imageReview!
                  .map(
                    (img) => imageContainer(img),
                  )
                  .toList(),
            ],
          ),
        )
      ],
    );
  }

   Widget imageContainer(img) {
    return InkWell(
      onTap: (){
        setState(() {
          mainImg = img;
          key = widget.data.imageReview!.indexOf(mainImg!).toString();
        });
      },
      child: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.symmetric(vertical: 10.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.network(
            img,
            height: 50.0,
            width: 50.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
