import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/icons/bottom_navigation_bar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('profile'),
        leading: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.arrow_back_outlined)),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    child: Image.network('https://i.ibb.co/fCKSMQ1/profile2.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First Name',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'Saurabh',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Last Name',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'Rajput',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'Saurabhraj2509@gmail.com ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Mobile Number',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          '9876543210',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Address',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Country',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'India',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'State',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'Delhi',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pin Code',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          '110092',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Landmark',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
                          'House No. 123',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  child: Text(
                    'Order History',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  child: Center(
                      child: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
          BottomNavigationBar1(iconHome: Icons.home_outlined, iconCart: Icons.shopping_cart_outlined, iconProfile: CupertinoIcons.person_solid, iconLiked: CupertinoIcons.heart, ),

        ],
      ),
    );
  }
}
