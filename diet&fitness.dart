import 'package:finalproject/artificalsweetener.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/herbaldrinks.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:finalproject/sportsvetamine.dart';
import 'package:finalproject/weightloss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dietandfitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        actions: [
          Row(
            children: [
              Text("Diet & Fitness"),
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
                                builder: (context) => weightloss()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/weightloss.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Weight Loss"),
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
                              builder: (context) => sportsvetamine()));},
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/sportvetamine.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Sport Vetamine"),
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
                                builder: (context) => herbaldrinks()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/herbaldrinks.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Herbal Drinks"),
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
                              builder: (context) => artificalsweetener()));},
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/artificalsweetener.jpg",
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Artificat Sweetener"),
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 200,
                    width: 170,
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
