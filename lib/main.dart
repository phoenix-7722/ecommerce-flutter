//import 'package:ecommerce/ui/pages/HomePage/home_page.dart';
import 'package:ecommerce/ui/pages/RoutePage/route.dart';
import 'package:ecommerce/ui/pages/SplashPage/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      routes: routes,
    );
  }
}
