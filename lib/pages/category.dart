import 'package:flutter/material.dart';
import 'package:plants/data/category_data.dart';
import 'package:plants/widgets/category_widget.dart';

class Category2 extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return Category(CategoryData[index].categoryId, CategoryData[index].name, CategoryData[index].image);
      }, itemCount: CategoryData.length, scrollDirection: Axis.horizontal,
      );
  }
}