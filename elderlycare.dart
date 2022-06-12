import 'package:finalproject/card.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:finalproject/searchfavorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class elderlycare extends StatelessWidget {
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
                "Elderly Care",
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
                  MyCard("assets/0100.jpg", "140 EGP",
                      "Fine Care Adult Diaper,Incontinence Unisex Briefs,Small,Waist (51-75 cm),18 Brief Count"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/0101.jpg", "284 EGP",
                      "Fine Care Incontinence Unisex Briefs Mega Pack,Large,Waist(110,156 cm),36Pcs"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/0102.jpg", "190 EGP",
                      "Fine Care Adult Diapers, Incontinence Unisex Briefs,Medium Waist,75,110cm 22Briefs Count"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/0103.jpg", "277 EGP",
                      "Forma care Adult Pants Diapers(Dry Medium,80/120cmm)14pcs"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/0104.jpg", "214 EGP",
                      "Sani Adult Diapers,Short Large,14Piece"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/0105.jpg", "305 EGP",
                      "Evony Large Adult Unisex Diaper 30 Pieces"),
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
