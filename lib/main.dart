import 'package:flutter/material.dart';
import 'package:plants/Routes/routes.dart';
import 'package:plants/provider/cart_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context)=>CartProvider())],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: GoRoutes().router.routeInformationParser,
        routerDelegate: GoRoutes().router.routerDelegate,
      ),
    );
  }
}