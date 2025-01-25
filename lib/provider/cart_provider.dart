import 'package:flutter/cupertino.dart';

import '../data/details_screen_data.dart';

class CartProvider extends ChangeNotifier{
final List cart = [];
final List liked = [];
 final List count = [1];


 num subTotal = 0;
 num shipping = 59 ;


 void addToLiked( String name){
   liked.add(plants.firstWhere((element) => element.name == name));
   notifyListeners();
 }

 void removeFromLiked(String name){
   liked.remove(plants.firstWhere((element) => element.name == name ));

   notifyListeners();
 }


void addToCart(String name){
  cart.add(plants.firstWhere((element) => element.name == name));
    subTotal = subTotal + plants.firstWhere((element) => element.name == name).price;

  notifyListeners();

}
void decrementCounter(String name){
if(count.last > 1 ){ count.removeLast();}
notifyListeners();

}

void incrementCounter(String name){
if(count.last<=9) count.add(count.last + 1);
notifyListeners();
}

void removeFromCart(String name){
  cart.remove(plants.firstWhere((element) => element.name == name));
    subTotal = subTotal - plants.firstWhere((element) => element.name == name).price;
  notifyListeners();
}

}