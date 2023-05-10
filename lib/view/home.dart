import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_assessment/core/data/data.dart';

import '../model/local_model.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/product_grid.dart';
import '../widgets/silver_bar_item.dart';
import '../widgets/silver_title.dart';
import '../widgets/slider_item.dart';
import '../widgets/top_icons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var data = LocalData.fromJson(localData);
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 0,
            title: const SilverAppBarItem(),
            toolbarHeight: 120.h,
            collapsedHeight: 180.h,
            pinned: true,
            expandedHeight: 450.h,
            flexibleSpace:  FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              titlePadding: EdgeInsets.zero,
              expandedTitleScale: 1,
              title: const SilverTitle(),
              background: Column(
                  children: const [
                    SliderItem(),
                   TopIcons()
                  ],
              ),
            ),
          ),
          ProductGrid(data: data),
        ],
      ),
    );
  }
}
