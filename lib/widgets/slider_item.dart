import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';

class SliderItem extends StatefulWidget {
  const SliderItem({super.key});

  @override
  State<SliderItem> createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  final CarouselController _controller = CarouselController();
  int current = 0;
  List media = [
    "https://img.freepik.com/free-photo/colourful-pencils-surrounding-shavings_23-2147843303.jpg?w=2000&t=st=1683721794~exp=1683722394~hmac=bb2c3f4dc231626979498893ca522dfecf5858ec75027f118f0f2512efa83727",
    "https://img.freepik.com/free-photo/woman-black-trousers-purple-blouse-laughs-leaning-stand-with-elegant-clothes-pink-background_197531-17614.jpg?w=2000&t=st=1683734489~exp=1683735089~hmac=193f40bbe71aa8b3fca3a5db042e016df4e7864b5349813eecbc024ab9a74a44",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      SizedBox(
        height: 320.h,
        child: CarouselSlider(
          carouselController: _controller,
          items: media.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    i,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
              height: 320.h,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlayCurve: Curves.easeInOut,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              }),
        ),
      ),
      Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(current == 1 ? "#BEAUTYSALE" : "#FASHION DAY",
                  style:
                      TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              ),
              Text(
                current == 1
                    ? "Discover our \nbeauty selection".toUpperCase()
                    : "80% OFF",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: current == 1 ? 18 : 30.sp,
                  color: AppColor.buttonColor,
                ),
              ),
              if (current == 0)
                Text(
                  "Discover fashion that suit to \nyour style",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                    color: AppColor.secondaryColor,
                  ),
                ),
              SizedBox(height: 15.h),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColor.buttonColor,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: AppColor.buttonColor,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Check this out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )),
      Positioned(
        right: 20,
        top: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: media.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: AnimatedContainer(
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 500),
                width: current == entry.key ? 20.0 : 10,
                height: 5.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(current == entry.key ? 0.9 : 0.2),
                ),
              ),
            );
          }).toList(),
        ),
      )
    ]);
  }
}
