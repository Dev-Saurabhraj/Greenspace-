import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/data/details_screen_data.dart';
import 'package:plants/provider/cart_provider.dart';
import 'package:plants/widgets/plant_showcase.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'Recommend_widget.dart';

class Recommendation extends StatefulWidget {
  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, provider, child) => ResponsiveGridList(
          physics: NeverScrollableScrollPhysics(),
          desiredItemWidth: 160,
          children: List.generate(6, (index) {
            return plants
                .map((e) => PlantShowcase(
                      name: e.name,
                      price: e.price,
                      imageUrl: e.imageUrl,
                      index: index,
                      cartColor1:
                          (provider.cart.any((test) => test.name == e.name))
                              ? Colors.black
                              : Colors.white,
                      cartColor2:
                          (provider.cart.any((test) => test.name == e.name))
                              ? Colors.white
                              : Colors.black,
                function: () {
                if (provider.cart.any((test) => test.name == e.name)) {
                  provider.removeFromCart(e.name);
                } else {
                  provider.addToCart(e.name);
                };

            }, likedIcon: (provider.liked.any((test) => test.name == e.name))
                ? CupertinoIcons.heart_solid
                :  CupertinoIcons.heart,

              iconColor: (provider.liked.any((test) => test.name == e.name))
                ? Colors.red
                : Colors.black, function2: () {
              if (provider.liked.any((test) => test.name == e.name)) {
                provider.removeFromLiked(e.name);
              } else {
                provider.addToLiked(e.name);
              };

            }, ))
                .toList()[index];
          })),
    );
  }
}
