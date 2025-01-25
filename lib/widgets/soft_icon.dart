import 'package:flutter/material.dart';

class SoftIcon extends StatelessWidget{
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;
  final Color boxColor;
  final Color iconBoxColor;

  SoftIcon( {required this.title, required this.subTitle, required this.icon, required this.iconColor, required this.boxColor, required this.iconBoxColor});

  Widget softIcon( String subTitle, String title, IconData icon, Color boxColor, Color iconColor, iconBoxColor ){
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
                decoration: BoxDecoration(
                  color: iconBoxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 40,
                child: Icon( icon,
                  color: iconColor,
                )),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 2),
                child: Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                height: 1,
                width: 70,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding:  EdgeInsets.only(top: 2),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                        subTitle,
                    style: TextStyle(color: Colors.black54, fontSize: 9),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      width: 150,
      height: 50,
    );
  }
  @override
  Widget build(BuildContext context){
    return softIcon(title, subTitle, icon, boxColor, iconColor, iconBoxColor);
  }
}