// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/Login.dart';
import 'screens/SignUp.dart';
import 'screens/WelcomeScrn.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      //                                        Tried For Web app  ------>    Causes ERROR     <------ AVOID USING THE BELOW CODE
      //                                                                                                   Need to fix the Bug
      // Note : Special Initialization for Web --> Because it won't work when I simply adding Firebase config to the index.html
      // si**gu**xxxx@gmail.com account has been used for this eMarket project
      // options: FirebaseOptions(
      //   apiKey: "AIzaSyCMX_Dz9Xju5eAYqJK5pFIqWiM2zTsSmhc",
      //   appId: "1:747635058285:web:5b8c617a62490547f90164",
      //   messagingSenderId: "747635058285",
      //   projectId: "emarket-46060",
      // ),
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red, backgroundColor: Colors.indigo[400]),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "SignUp": (BuildContext context) => SignUp(),
        "WelcomeScrn": (BuildContext context) => WelcomeScrn(),
      },
    );
  }
}
