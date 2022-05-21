import 'package:animated_curved_navigation_bar/page/add.dart';
import 'package:animated_curved_navigation_bar/page/chat.dart';
import 'package:animated_curved_navigation_bar/page/dashboard.dart';
import 'package:animated_curved_navigation_bar/page/profile.dart';
import 'package:animated_curved_navigation_bar/page/setting.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _page = 2;

  final screens = [
    Dashboard(),
    Chat(),
    Add(),
    Setting(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final _pages = <Widget>[
      Icon(
        Icons.dashboard_customize,
        size: 30,
        color: Colors.deepOrange,
      ),
      Icon(
        Icons.chat_bubble,
        size: 30,
        color: Colors.deepOrange,
      ),
      Icon(
        Icons.add,
        size: 30,
        color: Colors.deepOrange,
      ),
      Icon(
        Icons.settings,
        size: 30,
        color: Colors.deepOrange,
      ),
      Icon(
        Icons.person,
        size: 30,
        color: Colors.deepOrange,
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        extendBody:
            true, // Ca permet d' etendre le home sur la partie creuse de la bottom nav bar
        body: screens[_page],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.deepOrange,
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(color: Colors.black),
                ),
            iconTheme: IconThemeData(
              color: Colors.deepOrange,
            ),
          ),
          child: CurvedNavigationBar(
            color: Colors.black,
            buttonBackgroundColor: Colors.black,
            backgroundColor: Colors.white,
            height: 50,
            index: _page,
            items: _pages,
            animationCurve: Curves.ease,
            animationDuration: Duration(milliseconds: 500),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
        ),

        // bottomNavigationBar: CurvedNavigationBar(
        //     color: Colors.black,
        //     buttonBackgroundColor: Colors.black,
        //     backgroundColor: Colors.white,
        //     height: 50,
        //     index: _page,
        //     items: _pages,
        //     animationCurve: Curves.ease,
        //     animationDuration: Duration(milliseconds: 500),
        //     onTap: (index) {
        //       setState(() {
        //         _page = index;
        //       });
        //     },
        //   ),
      ),
    );
  }
}
