import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: blackColor,
      child: Center(
        child: Text(
          "My Home",
          style: GoogleFonts.bahianita(
            color: whiteColor,
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}
