import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/MyCartPage/my_cart_product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: Color(0xfff2f2f2),
        leading: Container(
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: blackColor,
              size: 17.0,
            ),
            onPressed: () => Navigator.pop(context, true),
          ),
        ),
        elevation: 0.0,
        title: Text(
          "Cart",
          style: GoogleFonts.paprika(
            fontSize: 15.0,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: MyCartProduct(),
      bottomNavigationBar: Container(
        height: 90.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: whiteColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  title: Text(
                    "Total : ",
                    style: GoogleFonts.aclonica(
                      color: blackColor,
                    ),
                  ),
                  subtitle: Text(
                    "\$100",
                    style: GoogleFonts.aclonica(
                      color: Colors.green[300],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: MaterialButton(
                    child: Text(
                      "Check out",
                      style: GoogleFonts.aclonica(
                        color: whiteColor,
                      ),
                    ),
                    color: blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
