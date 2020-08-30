import 'package:ecommerce/ui/pages/DrawerPage/drawer_screen.dart';
import 'package:ecommerce/ui/pages/HomePage/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
