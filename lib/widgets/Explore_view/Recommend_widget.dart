import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class RecommendationWidget extends StatelessWidget {
  final String name;
  final int price;
  final String image;
  final String size;

  RecommendationWidget(
      {required this.name,
      required this.price,
      required this.image,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {

          GoRouter.of(context).pushNamed('category_details_widget1',
              queryParams: {'Plant name': name});
        },
        splashColor: Colors.grey,
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),

          child: Column(
            children: [
              Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'From ₹$price',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
