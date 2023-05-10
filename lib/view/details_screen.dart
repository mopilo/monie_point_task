import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/util/custom_colors.dart';
import 'package:moniepoint_assessment/widgets/shipping_info.dart';

import '../model/local_model.dart';
import '../widgets/bottom_container.dart';
import '../widgets/custom_divider.dart';
import '../widgets/description_item.dart';
import '../widgets/details_tab.dart';
import '../widgets/image_review.dart';
import '../widgets/pagination.dart';
import '../widgets/product_image.dart';
import '../widgets/rating.dart';
import '../widgets/recommendation.dart';
import '../widgets/reviews_rating.dart';
import '../widgets/seller_info.dart';
import '../widgets/store_name.dart';
import '../widgets/title.dart';
import '../widgets/top_reviews.dart';

class DetailsScreen extends StatelessWidget {
  final Products? products;

  const DetailsScreen({super.key, this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.98),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        iconTheme: IconThemeData(color: Colors.grey.shade700),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_outline_rounded),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.share_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.local_mall_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ProductImage(data: products!),
                  const StoreName(),
                   SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Essential Men's Short Sleeve \nCrewneck T-Shirt",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                  const Ratings(),
                  const DetailsTab(),
                  const CustomDivider(),
                  const DetailsTitle(title: "Description"),
                  SizedBox(height: 20.h,),
                  Container(
                    margin: EdgeInsets.only(left: 5.w),
                    child: Column(
                      children:  [
                        ...products!.description!.map((desc)=> DescriptionItem(
                            text: desc),).toList()
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Text(
                    "Chat us of there is anything you need to ask about the product :)",
                    style: TextStyle(color: AppColor.secondaryColor),
                  ),
                  const CustomDivider(),
                  const DetailsTitle(title: "Shippings Information:"),
                  SizedBox(height: 20.h),
                  const ShippingInformation(title: "Delivery", subTitle: "Shipping from Jakarta, Indonesia"),
                  const CustomDivider(),
                  const DetailsTitle(title: "Seller Information:"),
                  SizedBox(height: 20.h),
                  const SellerInfo(),
                  const CustomDivider(),
                  const DetailsTitle(title: "Review & Ratings"),
                  ReviewRating(data: products!),
                  SizedBox(height: 20.h),
                  const DetailsTitle(title: "Review with images and videos"),
                  SizedBox(height: 20.h),
                  ImageReview(data: products!),
                  const CustomDivider(),
                  TopReview(data: products!),
                  const Pagination(),
                  SizedBox(height: 30.h),
                  const Recommendations()

                ],
              ),
            ),
          ),
          // bottom details
          const BottomContainer()
        ],
      ),
    );
  }

  
}
