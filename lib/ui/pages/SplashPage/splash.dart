import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/SignInPage/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
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
              "Let's choice with our products",
              style: GoogleFonts.wireOne(
                fontSize: 17.0,
                color: blackColor,
                fontWeight: FontWeight.w600,
                letterSpacing: 4.5,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 90.0, left: 20.0, right: 20.0),
              width: 400.0,
              height: 300.0,
              child: Image.asset("image/splash3.png"),
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
                child: Text(
                  "Get Start",
                  style: GoogleFonts.acme(
                    color: Color(0xfff7f7f7),
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  timeDilation = 4.0;
                  Navigator.pushNamed(context, SignIn.routeName);
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
                child: Text(
                  "Continue",
                  style: GoogleFonts.acme(
                    color: blackColor,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  timeDilation = 4.0;
                  Navigator.pushNamed(context, SignIn.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
