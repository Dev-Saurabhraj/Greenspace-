import 'package:flutter/material.dart';
import 'package:plants/provider/cart_provider.dart';
import 'package:provider/provider.dart';


class CheckOut extends StatefulWidget {
  @override
  State<CheckOut> createState() => CheckOutPage();
}

class CheckOutPage extends State<CheckOut> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder:
    (context, value, child) => Container(
          height: 330,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 315,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 22, left: 15),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sub Total',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 57, left: 15),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Shipping',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 15),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            value.subTotal.toDouble().toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, right: 15),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            value.shipping.toDouble().toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
                      child: Container(
                          height: 1.5,
                          width: double.infinity,
                          color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120, left: 15),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 122, right: 15),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            (value.subTotal!=0)?(value.subTotal.toDouble() + value.shipping.toDouble()).toString() : value.subTotal.toDouble().toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 170),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text('Checkout',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                color: Colors.white
                                ))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
