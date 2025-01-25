import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/pages/cart_page.dart';
import 'package:plants/pages/category_screen.dart';
import 'package:plants/pages/liked.dart';
import 'package:plants/pages/profile.dart';
import 'package:plants/widgets/category_details_widget1.dart';


import '../pages/error.dart';
import '../pages/home.dart';

class GoRoutes {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            name: 'home',
            pageBuilder: (context, state) {
              return MaterialPage(child: HomePage());
            }),
        GoRoute(
            path: '/category_details_widget1',
            name: 'category_details_widget1',
            pageBuilder: (context, state) {
              return MaterialPage(
                  child: DetailsScreen2(
                namec: state.queryParams['Plant name']!
              ));
            }),
        GoRoute(
            path: '/category_screen',
            name: 'category_screen',
            pageBuilder: (context, state) {
              return MaterialPage(
                  child: CategoryScreen(
                categoryMain: state.queryParams['name1']!,
              ));
            }),

        GoRoute(
            path: '/cart_page',
            name: 'cart_page',
            pageBuilder: (context, state) {
              return MaterialPage(child: Cart());
            }),

        GoRoute(
            path: '/profile',
            name: 'profile',
            pageBuilder: (context, state) {
              return MaterialPage(child: Profile());
            }),
        GoRoute(
          path:'/liked',
          name:'liked',
          pageBuilder: (context, state){
            return MaterialPage(child: Liked());
          }

        )
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      });
}
