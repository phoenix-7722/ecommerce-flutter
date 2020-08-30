//import 'package:ecommerce/ui/pages/Configuration/config.dart';
//import 'package:ecommerce/ui/pages/HomePage/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HoriMoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Expanded(
                child: Category(
                  image_location:
                      "https://i.pinimg.com/736x/8c/fb/73/8cfb73c3bf7af60477caf07b64fb558e.jpg",
                  image_caption: "T-Shirts",
                ),
              ),
              Expanded(
                child: Category(
                  image_location:
                      "https://png.pngtree.com/png-vector/20191030/ourlarge/pngtree-skirt-icon-simple-style-png-image_1911623.jpg",
                  image_caption: "Skirts",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Category(
                  image_location:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHn1fyLtlFZX9yWTS9JJ_uLVmX0T5E0kdLHA&usqp=CAU",
                  image_caption: "Blazers",
                ),
              ),
              Expanded(
                child: Category(
                  image_location:
                      "https://icon-library.com/images/short-icon/short-icon-26.jpg",
                  image_caption: "Shorts",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Category(
                  image_location:
                      "https://icon-library.com/images/watch-icon/watch-icon-29.jpg",
                  image_caption: "Watches",
                ),
              ),
              Expanded(
                child: Category(
                  image_location:
                      "https://thumbs.dreamstime.com/b/dress-icon-white-background-dress-symbol-sign-96435811.jpg",
                  image_caption: "Dresses",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Category(
                  image_location:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRs4Rn08LhBbhV2MIZrxkCUsX4UYjFxpgq0bg&usqp=CAU",
                  image_caption: "Bags",
                ),
              ),
              Expanded(
                child: Category(
                  image_location:
                      "https://previews.123rf.com/images/branche/branche1503/branche150300244/38127617-running-shoes-icons.jpg",
                  image_caption: "Shoes",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Category(
                  image_location:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRL1ueAWukgHz7RzSoMY392YxyH3xKLtLs23w&usqp=CAU",
                  image_caption: "Pants",
                ),
              ),
              Expanded(
                child: Category(
                  image_location:
                      "https://png.pngtree.com/png-vector/20190512/ourlarge/pngtree-hat-icon-png-image_1034176.jpg",
                  image_caption: "Hats",
                ),
              ),
            ],
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
  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff9f9f9),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          color: Colors.white,
          elevation: 3.5,
          child: Container(
            height: 130.0,
            width: 60.0,
            margin: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  image_location,
                  width: 130.0,
                  height: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    image_caption,
                    style: GoogleFonts.aclonica(
                      color: Colors.grey[700],
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
