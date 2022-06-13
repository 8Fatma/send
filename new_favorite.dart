import 'package:finalproject/card.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'more.dart';

import 'order.dart';

class offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                //+Not completed
              },
              icon: Icon(Icons.shopping_cart)),
          backgroundColor: Colors.blue[800],
          title: const Text("MIDIC",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => scan()));
                },
                icon: Icon(Icons.qr_code_scanner)),
          ],
          bottom: PreferredSize(
            preferredSize: Size(50, 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          contentPadding: const EdgeInsets.all(5.0),
                          prefixIcon: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  MyCard("assets/7.png", "484.65 EGP",
                      "Lipo 6 Black Ultra Concentrate 60 Powder Capsules"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard("assets/2.png", "79 EGP", "Chromax 500mg 60 Capsules"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard(
                      "assets/3.jpg", "565.65 EGP", "Lipo 6 CLA 90 Capsules"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard("assets/234.jpg", "40 EGP",
                      "Elle Blue Nail Polish Remover 150ml"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/9.png", "68 EGP", "Chito 500mg 30 Capsules"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard(
                      "assets/6.png", "99.75 EGP", "Regimax 120mg 30 Capsules"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/7.png", "484.65 EGP",
                      "Lipo 6 Black Ultra Concentrate 60 Powder Capsules"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard("assets/8.png", "76 EGP",
                      "Optifast Soup Powder Mix Chicken Flavor"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/9.png", "68 EGP", "Chito 500mg 30 Capsules"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard(
                      "assets/10.png", "97.99 EGP", "Orly 120mg 30 Capsules"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/11.png", "880 EGP",
                      "Beurer Diagnostic Bathroom Scale 180K/BF180"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard("assets/12.png", "1100 EGP",
                      "Beurer Abdominal Toning Belt"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard("assets/13.png", "820 EGP",
                      "Beurer Diagnostic Digital Class Scale 180K"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard("assets/14.png", "1500 EGP",
                      "Beurer Glass Scale Coral 180K"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard(
                      "assets/15.png", "160 EGP", "Beurer Active Sensor Watch"),
                  SizedBox(
                    width: 10,
                    height: 250,
                  ),
                  MyCard("assets/16.png", "799 EGP",
                      "Beurer Glass Bathroom Scale Magic"),
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
          currentIndex: 2,
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
