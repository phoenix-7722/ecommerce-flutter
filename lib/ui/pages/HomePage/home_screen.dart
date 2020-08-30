import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/Horizontal_Page/hori_list.dart';
import 'package:ecommerce/ui/pages/Horizontal_Page/hori_more_list.dart';
import 'package:ecommerce/ui/pages/Horizontal_Page/hori_product_list.dart';
import 'package:ecommerce/ui/pages/Products/PopularProduct/popular_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isdrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdrawerOpen ? 25 : 0.0),
        color: Color(0xfff5f5f5),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isdrawerOpen
                    ? Container(
                        width: 38.0,
                        height: 38.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isdrawerOpen = false;
                              });
                            }),
                      )
                    : Container(
                        width: 38.0,
                        height: 38.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.filter_list),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isdrawerOpen = true;
                              });
                            }),
                      ),
                Container(
                    width: 38.0,
                    height: 38.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:
                        IconButton(icon: Icon(Icons.search), onPressed: () {})),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Our Products!",
                    style: GoogleFonts.acme(
                      fontSize: 60.0,
                      color: blackColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: HoriProductList(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.paprika(
                          fontSize: 15.0,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(HoriMoreList());
                        },
                        child: Text(
                          "See All",
                          style: GoogleFonts.paprika(
                            fontSize: 15.0,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0), //Color(0xfff7f7f7) //
                  child: HoriList(),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: GoogleFonts.paprika(
                          fontSize: 15.0,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            "See All",
                            style: GoogleFonts.paprika(
                              fontSize: 15.0,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    //height: 600.0,
                    child: PopularProduct()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
