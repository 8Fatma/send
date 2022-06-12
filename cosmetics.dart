import 'package:finalproject/beautyaccessories.dart';
import 'package:finalproject/contactlenses.dart';
import 'package:finalproject/eyelashesaccessories.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'makeup.dart';
import 'nails.dart';

class cosmetics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        actions: [
          Row(
            children: [
              Text("Cosmetics"),
              SizedBox(
                width: 30,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => contactlensess()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/contactlenses.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Contact Lenses"),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: 170,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => beautyaccessories()));},
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/beautyaccessories.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Beauty Accessories"),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: 170,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => makeup()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/makeup.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Make_Up"),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: 170,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => nails()));},
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/nails.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Nails"),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: 170,
                  ),
                ],
              ),SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => eyelashesaccessories()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/eyelashesaccessories.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Eye Lashes Accessories"),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: 170,
                  ),
                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Colors.blue[800]),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'favorite',
                backgroundColor: Colors.blue[800]),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'offer',
              backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/order1.png", width: 28),
              label: 'order',
              backgroundColor: Colors.blue[800],
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/more.png", width: 28),
              label: 'more',
              backgroundColor: Colors.blue[800],
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.blue,
          onTap: (f) async {
            if (f == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            } else if (f == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => favorite()));
            } else if (f == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => offers()));
            } else if (f == 3) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => order()));
            } else if (f == 4) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => more()));
            }
          }),
    );
  }
}
