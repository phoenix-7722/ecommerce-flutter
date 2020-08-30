import 'package:ecommerce/ui/pages/HomePage/home_page.dart';
import 'package:ecommerce/ui/pages/SignInPage/sign_in.dart';
import 'package:ecommerce/ui/pages/SplashPage/splash.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => Splash(),
  HomePage.routeName: (context) => HomePage(),
  SignIn.routeName: (context) => SignIn(),
};
