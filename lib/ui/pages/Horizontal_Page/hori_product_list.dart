import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:ecommerce/ui/pages/Horizontal_Page/hori_product_detail_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HoriProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Category(
            image_location: "image/blazer4.jpg",
            image_caption: "BLAZER WOMAN",
            image_price: 23,
          ),
          Category(
            image_location: "image/tshirt2.webp",
            image_caption: "INDIGO T-SHIRT",
            image_price: 29,
          ),
          Category(
            image_location: "image/hat2.jpg",
            image_caption: "PORTLAND CAP",
            image_price: 27,
          ),
          Category(
            image_location: "image/dress4.jpg",
            image_caption: "MOASAR DRESS",
            image_price: 19,
          ),
          Category(
            image_location: "image/watch3.webp",
            image_caption: "ANALOGUS WATCH",
            image_price: 78,
          ),
          Category(
            image_location: "image/skirt2.jpg",
            image_caption: "CIRCLE TRI SKIRT",
            image_price: 33,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;
  // ignore: non_constant_identifier_names
  final int image_price;

  // ignore: non_constant_identifier_names
  Category({this.image_location, this.image_caption, this.image_price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        timeDilation = 2.0;

        Get.to(
          HoriProductDetailsList(
            imageLocationDetails: image_location,
            imageNameDetails: image_caption,
            imagePriceDetails: image_price,
          ),
        );
      },
      child: Hero(
        tag: image_location,
        child: Container(
            height: 190.0,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image_location),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 35.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black26,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        image_caption,
                        style: GoogleFonts.aclonica(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "\$$image_price",
                        style: GoogleFonts.aclonica(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
