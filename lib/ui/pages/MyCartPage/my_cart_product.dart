import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartProduct extends StatefulWidget {
  @override
  _MyCartProductState createState() => _MyCartProductState();
}

class _MyCartProductState extends State<MyCartProduct> {
  // ignore: non_constant_identifier_names
  var cart_products = [
    {
      "imageLocation": "images/shoe1.jpeg",
      "imageName": "Fancy Shoe(1267)",
      "imagePrice": 18,
      "imageSize": 29,
      "imageColor": "Green",
      "imageQuantity": 1,
    },
    {
      "imageLocation": "images/Watch2.jpg",
      "imageName": "Smart Watch(3244)",
      "imagePrice": 16,
      "imageSize": 40,
      "imageColor": "Orange",
      "imageQuantity": 2,
    },
    {
      "imageLocation": "images/hat1.jpg",
      "imageName": "Paign Hat(4099)",
      "imagePrice": 20,
      "imageSize": 42,
      "imageColor": "Brown",
      "imageQuantity": 1,
    },
    {
      "imageLocation": "images/bag3.jpg",
      "imageName": "School Bag(0077)",
      "imagePrice": 33,
      "imageSize": 26,
      "imageColor": "Blue",
      "imageQuantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cart_products.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartImageLocation: cart_products[index]["imageLocation"],
            cartImageName: cart_products[index]["imageName"],
            cartImagePrice: cart_products[index]["imagePrice"],
            cartImageSize: cart_products[index]["imageSize"],
            cartImageColor: cart_products[index]["imageColor"],
            cartImageQuantity: cart_products[index]["imageQuantity"],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final String cartImageLocation;
  final String cartImageName;
  final int cartImagePrice;
  final int cartImageSize;
  final String cartImageColor;
  final int cartImageQuantity;

  SingleCartProduct(
      {this.cartImageLocation,
      this.cartImageName,
      this.cartImagePrice,
      this.cartImageSize,
      this.cartImageColor,
      this.cartImageQuantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      height: 105.0,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        //LEADING_SECTION
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Image.asset(
            cartImageLocation,
            height: 105.0,
            width: 70.0,
          ),
        ),

        //TITLE SECTION
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                cartImageName,
                style: GoogleFonts.aclonica(color: blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 25.0),
              child: Text(
                "\$$cartImagePrice",
                style: GoogleFonts.aclonica(
                    color: Colors.green[300], fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        //SUBTITLE_SECTION
        subtitle: Column(
          children: [
            //row in the column
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Size  : ",
                    style: GoogleFonts.aclonica(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 15.0),
                  child: Text(
                    "$cartImageSize",
                    style: GoogleFonts.aclonica(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 7.0),
                  child: Text(
                    "Color : ",
                    style: GoogleFonts.aclonica(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    cartImageColor,
                    style: GoogleFonts.aclonica(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 14.0),
                  child: Text(
                    "Qty : ",
                    style: GoogleFonts.aclonica(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "$cartImageQuantity",
                    style: GoogleFonts.aclonica(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
