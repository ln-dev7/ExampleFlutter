import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.indigo,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 10,
            
            backgroundColor: Colors.indigo,
            color: Colors.white,
            activeColor: Colors.amber,
            tabBackgroundColor: Colors.grey.shade900,
            padding: EdgeInsets.all(18),
            tabs: [
              GButton(
                icon: Icons.mail,
                text: 'Mail',
              ),
              GButton(
                icon: Icons.video_call,
                text: 'Record',
              ),
              GButton(
                icon: Icons.phone,
                text: 'Call',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
