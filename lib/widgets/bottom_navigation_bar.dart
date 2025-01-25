import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBar1 extends StatelessWidget{


  IconData iconHome;
  IconData iconLiked;
  IconData iconProfile;
  IconData iconCart;

  BottomNavigationBar1({
    required this.iconHome,
    required this.iconCart,
    required this.iconProfile,
    required this.iconLiked,
    });

  @override
  Widget build(BuildContext context){
    return
      Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black54,
                    blurStyle: BlurStyle.outer,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){ GoRouter.of(context).pushNamed('home');},

                      child: Container(
                        width: 40, height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: [
                            Icon(iconHome, color: Colors.green.shade900,),
                            Text('Home', style: TextStyle(fontSize: 8, color: Colors.green.shade900, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){ GoRouter.of(context).pushNamed('liked');},
                      child: Container( width: 40, height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: [
                            Icon(iconLiked, color: Colors.green.shade900,),
                            Text('Liked', style: TextStyle(fontSize: 8, color: Colors.green.shade900, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){ GoRouter.of(context).pushNamed('profile');},
                      child: Container( width: 40, height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: [
                            Icon(iconProfile, color: Colors.green.shade900,),
                            Text('Profile', style: TextStyle(fontSize: 8, color: Colors.green.shade900, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){ GoRouter.of(context).pushNamed('cart_page');},
                      child: Container( width: 40, height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: [
                            Icon(iconCart, color: Colors.green.shade900,),
                            Text('Cart', style: TextStyle(fontSize: 8, color: Colors.green.shade900, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),

                  ],),
              ),
            ),
          ),
        ),
      )
      ;
  }}