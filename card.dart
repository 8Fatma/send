import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyCard extends StatefulWidget {
  String imagename, price, describtion;
  MyCard(this.imagename, this.price, this.describtion);
  bool click = true;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Image.asset(
                widget.imagename,
                height: 140,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.describtion,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "price : " + widget.price,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              FlatButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Save to Favorite',
                    toastLength: Toast.LENGTH_SHORT,
                    timeInSecForIosWeb: 4,
                    gravity: ToastGravity.BOTTOM_RIGHT,
                    backgroundColor: Colors.blue[500],
                    textColor: Colors.white,
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'Add To Favorite ',
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.blue[800],
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Add to card',
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 4,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.white24,
                          textColor: Colors.blueAccent,
                        );
                      },
                      icon: CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Remove from card',
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 4,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.white24,
                          textColor: Colors.blueAccent,
                        );
                      },
                      icon: CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        child: Icon(
                          Icons.remove,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 2.0,
          color: Colors.blueAccent,
          style: BorderStyle.solid,
        ),
      ),
      height: 310,
      width: 175,

    );
  }
}
