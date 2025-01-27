import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackIcon extends StatelessWidget{
@override
Widget build(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 20),
    child: InkWell(
      onTap: (){
        GoRouter.of(context).pop();

      },
      child: Container(width: 105, height: 42, decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(21),
          boxShadow: [BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 3,
            blurStyle: BlurStyle.outer,

          )]
      ),

        child: Row( children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
                height: 30,
                width: 30,

                child: Icon(Icons.arrow_back, color: Colors.green.shade900,),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 3,
                      blurStyle: BlurStyle.outer,

                    )]
                )),
          ),
          SizedBox( width: 5,),
          Center(child: Text('Go Back', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),))
        ],),
      ),
    ),
  );
}
}

