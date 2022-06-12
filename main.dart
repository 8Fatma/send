import 'package:finalproject/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sqflite/sqflite.dart';

dynamic mydb;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  mydb = await openDatabase('mydb.db', version: 1, onCreate: (db, version) {
    return db.execute(
        "CREATE TABLE phonebook(name VARCHAR(70), password VARCHAR(15),email VARCHAR(70),phone VARCHAR(15));");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Classes",
      home: home(),
    );
  }
}
