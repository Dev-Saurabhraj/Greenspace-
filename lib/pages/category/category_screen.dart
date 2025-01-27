import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/widgets/icons/bottom_navigation_bar.dart';
import 'package:plants/widgets/plant_showcase.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../data/details_screen_data.dart';
import '../../provider/cart_provider.dart';
import '../../widgets/icons/back_icon.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryMain;

  const CategoryScreen({required this.categoryMain});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryData =
        plants.where((element) => element.category == widget.categoryMain).toList();

    return Consumer<CartProvider>(
      builder: ( context, provider , child) => Scaffold(
        backgroundColor: Colors.white,

        body: Stack(
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: ResponsiveGridList(desiredItemWidth: 164, children: List.generate(categoryData.length, (index){
                      return PlantShowcase(imageUrl: categoryData[index].imageUrl, name: categoryData[index].name, price: categoryData[index].price, index: index, cartColor1: (provider.cart.any((test) =>
                                test.name == categoryData[index].name))
                            ? Colors.black
                            : Colors.white,
                        cartColor2: (provider.cart.any((test) =>
                        test.name == categoryData[index].name))
                            ? Colors.white
                            : Colors.black,
                        function: (){
                        if(provider.cart.any((test) => test.name == categoryData[index].name)){
                          provider.removeFromCart(categoryData[index].name);
                        }else{provider.addToCart(categoryData[index].name);}

                        }, likedIcon: (provider.liked.any((test) =>
                        test.name == categoryData[index].name))
                            ? CupertinoIcons.heart_solid
                            : CupertinoIcons.heart, iconColor: (provider.liked.any((test) =>
                        test.name == categoryData[index].name))
                            ? Colors.red
                            : Colors.black,
                        function2: () {
                          if(provider.liked.any((test) => test.name == categoryData[index].name)){
                            provider.removeFromLiked(categoryData[index].name);
                          }else{provider.addToLiked(categoryData[index].name);}

                        },
                      );
                    })),
              ),

           BackIcon(),
           BottomNavigationBar1(iconHome: Icons.home_outlined, iconCart: Icons.shopping_cart_outlined, iconProfile: Icons.person_outline, iconLiked: CupertinoIcons.heart),
            Padding(
              padding: const EdgeInsets.only(bottom:62, right: 60),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 20, width: 20,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)

                  ),
                  child: Center(child: Text(provider.cart.length.toString(), style: TextStyle( color: Colors.white),)),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
