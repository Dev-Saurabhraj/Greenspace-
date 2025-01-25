import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

class PlantShowcase extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int price;
  final int index;
  final Color cartColor1;
  final Color cartColor2;
  final IconData likedIcon;
  final Color iconColor;


  Function() function;
  Function() function2;


  PlantShowcase({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.index,
    required this.cartColor1,
    required this.cartColor2,
    required this.function(),
    required this.likedIcon,
    required this.iconColor,
    required this.function2
  });

  @override

  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (BuildContext context, cartProvider, child) => Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 4,
          child: Container(
            width: 164,
            height: 232,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),

            child: Stack(
              children: [
                InkWell(
      onTap: () {

      GoRouter.of(context).pushNamed('category_details_widget1',
      queryParams: {'Plant name': name} );},
                  child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 5,
                              child: Image.network(imageUrl, width: 164, height: 20,)),

                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only( left: 15),
                              child: Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ),),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only( left: 15),
                              child: Text('₹ '+ price.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ),),
                            ),
                          ),


                        ]
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Column(
                      children: [Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: (){function2();},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(likedIcon, color: iconColor,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 135),
                    child: InkWell(
                      onTap: (){
                        function();

                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: cartColor1,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(CupertinoIcons.cart_badge_plus, color: cartColor2),
                      ),
                    ),
                  )]),
                )

              ]
            ),
          )
        ),
      ),
    );
  }
}
