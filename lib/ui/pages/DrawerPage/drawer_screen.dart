import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/MyCartPage/my_cartpage.dart';
import 'package:ecommerce/ui/pages/MyHomePage/my_homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 50.0,
        left: 15.0,
        bottom: 50.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("image/hat2.jpg"),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ye Thura Kyaw",
                    style: GoogleFonts.aclonica(
                      color: blackColor,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    "Active Status",
                    style: GoogleFonts.aclonica(
                      color: Colors.grey[900],
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Get.to(MyHomePage()),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.home,
                            color: Colors.grey[800],
                            size: 20.0,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.aclonica(
                          fontSize: 15.0,
                          color: blackColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.shopping_basket,
                          color: Colors.grey[800],
                          size: 20.0,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Orders",
                      style: GoogleFonts.aclonica(
                        fontSize: 15.0,
                        color: blackColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.grey[800],
                          size: 20.0,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Favourite",
                      style: GoogleFonts.aclonica(
                        fontSize: 15.0,
                        color: blackColor,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => Get.to(MyCartPage()),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.grey[800],
                            size: 20.0,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Carts",
                        style: GoogleFonts.aclonica(
                          fontSize: 15.0,
                          color: blackColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.person,
                          color: Colors.grey[800],
                          size: 20.0,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.aclonica(
                        fontSize: 15.0,
                        color: blackColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.grey[800],
                size: 20.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Setting",
                style: GoogleFonts.aclonica(
                  color: blackColor,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 2.0,
                height: 20,
                color: blackColor,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Log out",
                style: GoogleFonts.aclonica(
                  color: blackColor,
                  fontSize: 14.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
