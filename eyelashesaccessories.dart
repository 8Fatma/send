import 'package:finalproject/card.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:finalproject/searchfavorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class eyelashesaccessories extends StatelessWidget {
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
                "Eye Lashes Accessories",
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
                  MyCard("assets/235.jpg", "69.90 EGP",
                      "Ardell Duralash Flare Short Black"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/236.jpg", "",
                      "Ardell Fashion Glamour Lashes Black/103"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/237.jpg", '', "Ardell Double Up Black/202"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/238.jpg", "",
                      "Ardell Eyelash Twin Pack Demi Black/101"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/239.jpg", "",
                      "Lord & Berry Lash Glamour Collection/E14"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/240.jpg", "", "Ardell 3D Fauxmink Lashes/854"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/241.jpg", "87.90 EGP",
                      "Ardell Brush On Strip Lash Adhesive 5ml"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/242.jpg", "115 EGP",
                      "Lord & Berry Lash Glamour Collection/EI10"),
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
