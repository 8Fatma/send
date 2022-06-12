import 'package:finalproject/card.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/home.dart';
import 'package:finalproject/more.dart';
import 'package:finalproject/offers.dart';
import 'package:finalproject/order.dart';
import 'package:finalproject/searchfavorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class styling extends StatelessWidget {
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
                "Styling",
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
                  MyCard("assets/103.jpg", "86.90 EGP",
                      "Vital Care (+10) Mega Hold Gel 300ml"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/104.jpg", "",
                      "Enliven Firm Hold Hair Gel Pro Vitb5 250gm"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/105.jpg", "",
                      "Olaplex No.6 Bond Smoother Leave In Hair Cream 100ml"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/106.jpg", "360 EGP",
                      "G.K. Leave in Conditioner Cream 130ml"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/107.jpg", "280.50 EGP",
                      "Chi Ceramic Silk Infusion 59M"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/108.jpg", "62.90 EGP",
                      "Enliven Wet Hold Hair Gel 500ml"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/109.jpg", "",
                      "Trichup Hair Fall Control Hair Oil 100ml"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/110.jpg", "",
                      "Ogx Argan Oil Of Morocco Penetrating Oil 100ml"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/111.jpg", "175 EGP",
                      "Ogx Coconut Oil Hair Oil 118ml"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/112.jpg", "", "Ogx Kukui Oil Hair Oil 118m"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/113.jpg", "280 EGP",
                      "Bioblas Anti Hair Loss Herbal Oil Argan 100ml"),
                  SizedBox(
                    height: 250,
                    width: 10,
                  ),
                  MyCard("assets/114.jpg", "130 EGP",
                      "Medceuticals Herano Rish Hair Cream 120ml"),
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
