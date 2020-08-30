import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  static String routeName = "/sign_in";
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 85.0),
              child: Text(
                "E-commerce App",
                style: GoogleFonts.acme(
                  fontSize: 50.0,
                  color: blackColor,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            Text(
              "Create an account as a member to choose products",
              style: GoogleFonts.wireOne(
                fontSize: 17.0,
                color: blackColor,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.6,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 90.0),
              width: 400.0,
              height: 300.0,
              child: Image.asset("image/splash2.png"),
            ),
            SizedBox(
              height: 110.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: MaterialButton(
                color: blackColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "image/p.jpg",
                      height: 20.0,
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Sign Up With Phone",
                      style: GoogleFonts.acme(
                        color: Color(0xfff7f7f7),
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  timeDilation = 3.0;
                  Navigator.pushNamed(context, HomePage.routeName);
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "image/f.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Sign Up With Facebook",
                      style: GoogleFonts.acme(
                        color: blackColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  timeDilation = 3.0;
                  Navigator.pushNamed(context, HomePage.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
