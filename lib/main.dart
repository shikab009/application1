import 'package:application1/Fourth_Page.dart';
import 'package:application1/FrontPage.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        
        primarySwatch: Colors.blue,
      ),
      home: const FourthPage(),
    );
  }
}