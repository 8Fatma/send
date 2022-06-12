import 'package:finalproject/scan.dart';
import 'package:flutter/material.dart';

class vitamins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                //+Not completed
              },
              icon: Icon(Icons.shopping_cart)),
          backgroundColor: Colors.blue,
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
      body: Container(),
    );
  }
}
