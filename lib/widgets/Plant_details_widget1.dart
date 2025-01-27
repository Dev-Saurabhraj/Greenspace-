import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/provider/cart_provider.dart';
import 'package:readmore/readmore.dart';
import 'icons/back_icon.dart';
import 'icons/soft_icon.dart';
import '../data/details_screen_data.dart';
import 'package:provider/provider.dart';

class DetailsScreen2 extends StatefulWidget {
  final String namec;


  DetailsScreen2({
    required this.namec,
  });

  @override
  State<DetailsScreen2> createState() => DetailsScreen2State();
}

class DetailsScreen2State extends State<DetailsScreen2> {

  @override
  Widget build(BuildContext context) {
    final data = plants.firstWhere((element) => element.name == widget.namec);
    return Consumer<CartProvider>(
      builder: (context, value, child)=>
    Scaffold(
        backgroundColor: Colors.white,
        body: ChangeNotifierProvider<CartProvider>(
        create: (context) => CartProvider(),
    child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackIcon(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 20),
                    child: InkWell(
                      onTap: (){ GoRouter.of(context).pushNamed('cart_page');},
                      child: Container(
                        child: Center(child: Icon(Icons.shopping_cart_outlined)),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [BoxShadow( blurStyle: BlurStyle.outer, blurRadius: 1,)]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                    child: Image.network(data.imageUrl,
                        height: 300, width: double.infinity, fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(25)),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(data.name,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          width: 20,

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Container(height: 20,
                            width: 70, child: Center(child: Text(data.category)),
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green,
                          ),
                          )),
                        )
                      ],
                    ),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ReadMoreText(
                      data.description,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      trimLines: 1,
                      trimLength: 120,
                      colorClickableText: Colors.green,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Row(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SoftIcon(
                              subTitle: 'Weather',
                              title: data.weather,
                              icon: Icons.cloud,
                              iconColor: Colors.purple,
                              boxColor: Colors.purple.shade50,
                              iconBoxColor: Colors.purple.shade200),
                          SizedBox(
                            height: 20,
                          ),
                          SoftIcon(
                              subTitle: 'Flowery',
                              title: (data.flowery) ? 'Yes' : 'No',
                              icon: Icons.icecream_outlined,
                              iconColor: Colors.deepOrange,
                              boxColor: Colors.orange.shade50,
                              iconBoxColor: Colors.orange.shade200),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          SoftIcon(
                              subTitle: 'Humidity',
                              title: data.humidity,
                              icon: Icons.water_drop,
                              iconColor: Colors.blue,
                              boxColor: Colors.blue.shade50,
                              iconBoxColor: Colors.blue.shade200),
                          SizedBox(
                            height: 20,
                          ),
                          SoftIcon(
                              subTitle: 'Duration',
                              title: '${data.duration.toString()} Months.',
                              icon: Icons.timer,
                              iconColor: Colors.green,
                              boxColor: Colors.green.shade50,
                              iconBoxColor: Colors.green.shade200), ],
                      ),
                    )
                  ],
                ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text('How To Care', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
              ),

              Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(itemBuilder: (BuildContext context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 5, left: 40 ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.black,

                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(data.howToCare[index], style: TextStyle(fontSize: 15))
                        ,
                      ],
                    ),
                  );
                }, itemCount: data.howToCare.length, scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Benefits', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
              ),

              Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(itemBuilder: (BuildContext context, index){

                  return Padding(
                    padding: const EdgeInsets.only(top: 5, left: 40 ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.black,

                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(data.benefits[index], style: TextStyle(fontSize: 15))
                        ,
                      ],
                    ),
                  );
                }, itemCount: data.benefits.length, scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 1),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Cares', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
              ),

              Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(itemBuilder: (BuildContext context, index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5, left: 40 ),
                    child: Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,

                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(data.cares[index], style: TextStyle(fontSize: 15))
                          ,
                        ],
                      ),
                    ),
                  );
                }, itemCount: data.cares.length, scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,


              )


            ]),

          )

        ),
    bottomSheet: Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.only( topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            boxShadow: [BoxShadow(
              blurRadius: 3,
              blurStyle: BlurStyle.outer,

            )

            ]

      ),


      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 7),
            child: Column(
              children: [
                Text('Price', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 13, color: Colors.grey),)
                ,
                Text('₹${data.price}', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22),)
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),

          InkWell(
            onTap: (){


            },

            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 50,
                width: 185,
                decoration:BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.green.shade900,Colors.green.shade900, Colors.green], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(50),

                ),
                child: InkWell(
                  onTap: (){
                    if (value.cart.any((test) => test.name == widget.namec)) {
                      value.removeFromCart(widget.namec);
                    } else {
                      value.addToCart(widget.namec);
                    };
                  },
                  child: Stack(children: [


                  Center(
                    child:Container(
                        height: 45,
                        width: 180,
                        decoration:BoxDecoration(
                          color: Colors.green.shade200,
                          borderRadius: BorderRadius.circular(50),

                        ),
                      ),
                    ),
                  Center(child: Text((value.cart.any((test) => test.name == widget.namec))
                      ? 'Added In Cart'
                      :  'Add To Cart', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold , color: Colors.green.shade900),)),


                ])),
              ),
            ),
          )

        ],
      ),

    ),


    ) );
  }
}
