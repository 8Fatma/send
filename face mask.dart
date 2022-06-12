import 'package:finalproject/card.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:finalproject/searchfavorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class facemask extends StatelessWidget {
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
                "Face Mask",
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
                  MyCard("assets/254.jpg", "165 EGP", "Face Mask N95 3M 8210"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/255.jpg", "225 EGP",
                      "Mask Face Reusable Fine Guard Kids Pink(Small)"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/256.jpg", "1455 EGP",
                      "Safety Face Shield Full Face Acrylic For Kids"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/257.jpg", "6 EGP",
                      "Face Mask Reusable Textile Black(Nile)"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/258.jpg", "25 EGP",
                      "Mask Face Kn95 With Filter(One Piece)"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/259.jpg", "20 EGP",
                      "Mask Face Kn95 Without Filter (One Piece) "),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/260.jpg", "", "Face Mask N95 3M 8000"),
                  SizedBox(
                    height: 250,
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
