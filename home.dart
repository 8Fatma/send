import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/babyandmom.dart';
import 'package:finalproject/card.dart';
import 'package:finalproject/cosmetics.dart';
import 'package:finalproject/dialy%20essentials.dart';
import 'package:finalproject/diet&fitness.dart';
import 'package:finalproject/favorite.dart';
import 'package:finalproject/haircare.dart';
import 'package:finalproject/homehealthcare.dart';
import 'package:finalproject/scan.dart';
import 'package:finalproject/skincare.dart';
import 'package:finalproject/vitamins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'more.dart';

import 'offers.dart';
import 'order.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/background(2).jpg",
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)),
        ),
        child: ListView(
          children: [
            SizedBox(height: 5),
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
              items: [
                Image.asset(
                  "assets/offer1.jpg",
                  width: 1000,
                  height: 1000,
                  fit: BoxFit.cover,
                ),
                Image.asset("assets/offer2.jpg", width: 1000, height: 200),
                Image.asset("assets/offer3.jpg", width: 1000, height: 200),
                Image.asset("assets/offer4.jpg", width: 1000, height: 200),
                Image.asset("assets/offer6.jpg", width: 1000, height: 200),
                Image.asset("assets/offer7.jpg", width: 1000, height: 200),
                Image.asset("assets/offer9.jpg", width: 1000, height: 200),
                Image.asset("assets/offer10.jpg", width: 1000, height: 200),
              ],
            ),

            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shop By Category ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dietandfitness()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Image.asset('assets/vitamins.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                'ViTAMiNS',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/medicen.png',
                                    height: 70, width: 70),
                              ),

                              // SizedBox(height: 10,),
                              Text(
                                'MEDICATION',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => babyandmom()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/child.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                'Child Health',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cosmetics()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/cosmetics.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text('Cosmetics',
                                  style: TextStyle(
                                    fontFamily: 'flu1',
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homehealthcare()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Image.asset('assets/sexual health.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                'SEXUAl HEALTH',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dailyessentials()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/personal care.png',
                                    height: 70, width: 70),
                              ),

                              // SizedBox(height: 10,),
                              Text(
                                'PERSONAL CARE',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 9),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => babyandmom()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/mother and baby.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                'MAM&BABY',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homehealthcare()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/home halth care.png',
                                    height: 60, width: 60),
                              ),
                              // SizedBox(height: 10,),
                              Center(
                                child: Text('HOME HEALTH CARE',
                                    style: TextStyle(
                                      fontFamily: 'flu1',
                                      fontSize: 10,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dietandfitness()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/fitness.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                'DIET&FiTNESS',
                                style: TextStyle(
                                  fontFamily: 'flu1',
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => haircare()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/hair care.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              const Text(
                                'HAIR CARE',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => skincare()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/skin care.png',
                                    height: 70, width: 70),
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                'SKIN CARE',
                                style:
                                    TextStyle(fontFamily: 'flu1', fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ), //menu
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Offers ... More",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MyCard("assets/myway.jpg", "90 EGP",
                          "My Way Tender, Eau de Parfum,For Girls"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/a.jpg", "100 EGP",
                          "Hygea Beauty Makeup Sponge"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/f.jpg", "140 EGP",
                          "Fine, Sterilized, Facial Tissues, Classic, 200x2 Ply White Tissues, pack of 6 boxes, 1200 tissues"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/o.jpg", "130 EGP",
                          "Sanosan Baby Lotion Wipes, Set Of 2, 72 Wipes"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/p.jpg", "829 EGP",
                          "Art Naturals Anti Aging Set - Vitamin C "),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/y.jpg", "59 EGP",
                          "12 pcs Naked 3 Makeup Goat Hair Brushes Set Kit"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/i.jpg", "130 EGP", "ROHANS 12 Pc "),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Beautiful Summer",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MyCard("assets/158.jpg", "",
                          "Babe Soothing Micellar Gel 245ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/165.jpg", "275 EGP",
                          "Ivatherm Ivapur Micellar Lotion 250ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/165.jpg", "275 EGP",
                          "Ivatherm Ivapur Micellar Lotion 250ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/026.jpg", "269 EGP",
                          "Gillette Body Men’s Disposable Razors"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/p.jpg", "829 EGP",
                          "Art Naturals Anti Aging Set - Vitamin C "),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/163.jpg", "49.98 EGP",
                          "Garnier Micellar Water With Vitamin C 100ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/035.jpg", "125 EGP",
                          "NIVEA MEN After Shave Balm Sensitive 100ml"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Product",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MyCard("assets/025.jpg", "86 EGP",
                          "Dove Men +Care Invisible Dry Spray 250ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard('assets/030.jpg', "66 EGP",
                          "NIVEA MEN Shaving Foam Deep 200ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/167.jpg", "229.50 EGP",
                          "Loreal Pure Clay Mask Charcoal 50ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/234.jpg", "40 EGP",
                          "Elle Blue Nail Polish Remover 150ml"),
                      SizedBox(
                        width: 8,
                      ),
                      MyCard("assets/231.jpg", "",
                          'Kiss Acrylic Nude Nails 28pcs/kan04'),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
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
