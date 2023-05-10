import 'package:flutter/material.dart';
import 'package:moniepoint_assessment/view/details_screen.dart';

import '../model/local_model.dart';
import 'grid_item.dart';

class ProductGrid extends StatelessWidget {
  final LocalData data;
  const ProductGrid({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 0.0,
              mainAxisExtent: 265,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>
                          DetailsScreen(products: data.products![index])));
            },
                  child: GridItem(img: data.products![index].mainImage!),
                );
              },
              childCount: data.products!.length,
            ),
          );
  }
}