import 'package:finalproject/babyaccessories.dart';
import 'package:finalproject/babyfoodandmilk.dart';
import 'package:finalproject/babytoiletries.dart';
import 'package:finalproject/diapers.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/mothercare.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:finalproject/searchfavorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class babyandmom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        actions: [
          Row(
            children: [
              Text(
                "Baby & Mom",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => searchfavorite()));
                  },
                  icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
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
                                builder: (context) => babyfoodandmilk()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/babyfoodandmilk.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Baby Food & milk"),
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => diapers()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/diapers.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Diapers"),
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
                                builder: (context) => babytoiletries()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/babytoiletries.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Baby & Kids Toiletries"),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => babyaccessories()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/babyaccessories.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Baby Accessories"),
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
                                builder: (context) => mothercare()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/mothercare.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Mother Care"),
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
              SizedBox(
                height: 30,
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
