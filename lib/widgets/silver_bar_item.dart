import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';

class SilverAppBarItem extends StatelessWidget {
  const SilverAppBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.secondaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.search, color: AppColor.secondaryColor,),
                Expanded(
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey.shade800,
                        fontSize: 12.sp),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor,
                        fontSize: 14.sp
                      ),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                )
              ],
            ),
          )),
          Stack(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.local_mall_outlined, color: Colors.black, size: 30,),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  height: 20,
                  width: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE55986),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text("1",
                      style: TextStyle(color: Colors.white, fontSize: 8.sp)),
                ),
              )
            ],
          ),
          Stack(
            children: [
              const Icon(
                Icons.sms_outlined,
                 color: Colors.black,
                 size: 30,
              ),
              Positioned(
                right: 0,
                bottom: 10,
                child: Container(
                  height: 20, width: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE55986),
                    borderRadius: BorderRadius.circular(4.r)
                  ),
                  child: Text("9+", style: TextStyle(color: Colors.white, fontSize: 8.sp)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}