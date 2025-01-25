import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Category extends StatelessWidget {
  final String id;
  final String name;
  final String image;

  Category(this.id, this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 20, right: 25, bottom: 10),
      child: Container(
        height: 80,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            blurStyle: BlurStyle.outer,

          )],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              height: 70,
              width: 70,
              child: InkWell(
                  onTap: () {
                    GoRouter.of(context)
                        .pushNamed('category_screen', queryParams: {'name1': name});
                  },
                  splashColor: Colors.black,
                  child:  Image.network(
                        image,
                        fit: BoxFit.contain,
                      )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(name, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.green.shade900,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
