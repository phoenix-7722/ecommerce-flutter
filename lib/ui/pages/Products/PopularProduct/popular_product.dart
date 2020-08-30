import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/Products/PopularProduct/popular_product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
            children: [
              Category(
                imageLocation: "images/shoe1.jpeg",
                imageName: "Fancy Shoe(1267)",
                imageNewPrice: 12,
                imageOldPrice: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Category(
                imageLocation: "images/hat1.jpg",
                imageName: "Paign Hat(4099)",
                imageNewPrice: 20,
                imageOldPrice: 40,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Category(
                imageLocation: "images/short1.jpg",
                imageName: "Style Short(3344)",
                imageNewPrice: 7,
                imageOldPrice: 16,
              ),
              SizedBox(
                width: 10.0,
              ),
              Category(
                imageLocation: "images/bag3.jpg",
                imageName: "School Bag(0077)",
                imageNewPrice: 33,
                imageOldPrice: 51,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Category(
                imageLocation: "images/skirt1.webp",
                imageName: "Skirt(6678)",
                imageNewPrice: 9,
                imageOldPrice: 17,
              ),
              SizedBox(
                width: 10.0,
              ),
              Category(
                imageLocation: "images/Watch2.jpg",
                imageName: "S-Watch(3244)",
                imageNewPrice: 21,
                imageOldPrice: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageName;
  final int imageNewPrice;
  final int imageOldPrice;

  Category(
      {this.imageLocation,
      this.imageName,
      this.imageNewPrice,
      this.imageOldPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.0,
      width: 175.0,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(
                      top: 15.0, bottom: 15.0, left: 25.0, right: 10.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: GestureDetector(
                      onTap: () {
                        timeDilation = 1.5;
                        Get.to(PopularProductDetails(
                          imageLocationDetail: imageLocation,
                          imageNameDetail: imageName,
                          imageNewPriceDetail: imageNewPrice,
                          imageOldPriceDetail: imageOldPrice,
                        ));
                      },
                      child: Hero(
                          tag: imageLocation,
                          child: Image.asset(imageLocation))))),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 15.0),
              child: Row(
                children: [
                  Text(
                    imageName,
                    style: GoogleFonts.aclonica(
                      color: Colors.grey[700],
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "\$$imageNewPrice",
                        style: GoogleFonts.aclonica(
                          fontSize: 12.0,
                          color: Colors.green[300],
                        ),
                      ),
                      Text(
                        "\$$imageOldPrice",
                        style: GoogleFonts.aclonica(
                          fontSize: 10.0,
                          color: Colors.red[300],
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
