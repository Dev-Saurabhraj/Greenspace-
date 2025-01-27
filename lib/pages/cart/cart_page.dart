import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/widgets/icons/back_icon.dart';
import 'package:plants/widgets/checkout.dart';
import 'package:plants/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import '../../widgets/icons/bottom_navigation_bar.dart';

class Cart extends StatefulWidget{
  @override
  State<Cart> createState() => CartPage();

}

class CartPage extends State<Cart>{
  @override
  Widget build(BuildContext context){
    return Consumer<CartProvider>(
      builder: (BuildContext context, value, child)=> Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0, bottom: 300),
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

                          child: Image.network(value.cart[index].imageUrl)),
                        ),

                        Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              child: Text( value.cart[index].name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(  bottom: 10),
                              child: Text('Size : Small', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              child: Text('₹ ${value.cart[index].price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      value.decrementCounter(value.cart[index].name);
                                    },
                                    child: Container( height: 30, width: 30, decoration:BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3),
                                        border: Border.all(color: Colors.grey)

                                    ),
                                    child: Center(child: Container( height: 1.5, width: 12,color: Colors.black,))
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    child: Container( height: 30, width: 30, decoration:BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(3),


                                    ),
                                      child: Center(child: Text(value.cart[index].count.toString(), style: TextStyle( color: (value.cart[index].count == 10)? Colors.red : Colors.black,fontWeight: FontWeight.bold),)),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      value.incrementCounter(value.cart[index].name);
                                    },
                                    child: Container( height: 30, width: 30, decoration:BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3),
                                        border: Border.all(color: Colors.grey)

                                    ),
                                      child: const Icon(Icons.add, color: Colors.black,),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: InkWell(
                                      onTap: (){
                                        value.removeFromCart(value.cart[index].name);
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



                      ],
                    ),

                      ]
                    );

                  }, itemCount: value.cart.length,

                  ),
                ),
              ),
          BackIcon(),
             Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CheckOut()),
              ),
              BottomNavigationBar1(iconHome: Icons.home_outlined, iconCart: Icons.shopping_cart, iconProfile: CupertinoIcons.person, iconLiked: CupertinoIcons.heart,),


              Padding(
                padding: const EdgeInsets.only(top: 33, right: 20),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text('Items (${value.cart.length.toString()})', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))),
              )



            ]
          ))

    );
  }
}