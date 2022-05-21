import 'package:flutter/material.dart';
import 'package:navigation_bar_with_fab_button/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NavBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ), 
      home: Home(),
    );
  }
}
