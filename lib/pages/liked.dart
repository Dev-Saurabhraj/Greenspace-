import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/widgets/icons/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';
import '../widgets/icons/back_icon.dart';

class Liked extends StatefulWidget{
  @override
  State<Liked> createState() => LikedPage();

}
class LikedPage extends  State<Liked>{
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
        builder: (BuildContext context, value, child)=> Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30 , right: 20),
                    child: Align(
                       alignment: Alignment.topRight,
                        child: Text('Liked(${value.liked.length})', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0, bottom: 60),
                    child: ListView.builder(itemBuilder: (BuildContext context, int index){
                      return Stack(
                          children:[

                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),

                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40, top: 40, bottom: 40),
                                  child: Container(
                                      height: 160,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey
                                        ,
                                        borderRadius: BorderRadius.circular(15),

                                      ),

                                      child: Image.network(value.liked[index].imageUrl)),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text( value.liked[index].name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(  bottom: 10),
                                        child: Text('Size : Small', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text('₹ '+value.liked[index].price.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                                              child: Text((value.liked[index].inStock)? 'In Stock' : 'Out of Stock', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: (value.liked[index].inStock)? Colors.green :Colors.red),),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(left: 15.0),
                                              child: InkWell(
                                                onTap: (){
                                                  value.removeFromLiked(value.liked[index].name);
                                                },
                                                child: Container(
                                                  height: 40, width : 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey.shade200,
                                                      borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  child: Icon(CupertinoIcons.delete, color: Colors.red, size: 30,
                                                  ),

                                                ),
                                              ),
                                            )

                                          ],
                                        ),
                                      )

                                    ],

                                  ),
                                ),



                              ],
                            ),

                          ]
                      );

                    }, itemCount: value.liked.length,

                    ),
                  ),
                  BackIcon(),
                  BottomNavigationBar1(iconHome: Icons.home_outlined, iconCart: Icons.shopping_cart_outlined, iconProfile: CupertinoIcons.person, iconLiked: CupertinoIcons.heart_solid, )



                ]
            ))

    );
  }

}