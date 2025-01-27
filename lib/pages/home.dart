import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/pages/Search_bar.dart';
import 'package:plants/widgets/banner.dart';
import 'package:plants/pages/category/category.dart';
import 'package:plants/widgets/icons/bottom_navigation_bar.dart';
import 'package:plants/widgets/Explore_view/recommend.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder:(context, provider, child) => Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Stack(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20),
                  child: Text(
                    'Hello..., \n  Saurabh',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SearchBar2(),
                Banner2(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade900),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 14),
                  child: Container(
                      width: double.infinity, height: 130, child: Category2()),
                ),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Text(
                            'Explore',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade900),
                          ),

                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: double.infinity,
                    height: 1000,
                    child: Recommendation(),
                  ),
                )
              ],
            ),
          ),
     BottomNavigationBar1(iconHome: Icons.home, iconCart: Icons.shopping_cart_outlined, iconProfile: CupertinoIcons.person, iconLiked: CupertinoIcons.heart,),

        ]),
      ),
    );
  }
}

