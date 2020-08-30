import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoriList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Category(
              image_location:
                  "https://i.pinimg.com/736x/8c/fb/73/8cfb73c3bf7af60477caf07b64fb558e.jpg",
              image_caption: "T-Shirts",
            ),
            Category(
              image_location:
                  "https://png.pngtree.com/png-vector/20191030/ourlarge/pngtree-skirt-icon-simple-style-png-image_1911623.jpg",
              image_caption: "Skirts",
            ),
            Category(
              image_location:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHn1fyLtlFZX9yWTS9JJ_uLVmX0T5E0kdLHA&usqp=CAU",
              image_caption: "Blazers",
            ),
            Category(
              image_location:
                  "https://icon-library.com/images/short-icon/short-icon-26.jpg",
              image_caption: "Shorts",
            ),
            Category(
              image_location:
                  "https://icon-library.com/images/watch-icon/watch-icon-29.jpg",
              image_caption: "Watches",
            ),
          ],
        ),
        Row(
          children: [
            Category(
              image_location:
                  "https://thumbs.dreamstime.com/b/dress-icon-white-background-dress-symbol-sign-96435811.jpg",
              image_caption: "Dresses",
            ),
            Category(
              image_location:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRs4Rn08LhBbhV2MIZrxkCUsX4UYjFxpgq0bg&usqp=CAU",
              image_caption: "Bags",
            ),
            Category(
              image_location:
                  "https://previews.123rf.com/images/branche/branche1503/branche150300244/38127617-running-shoes-icons.jpg",
              image_caption: "Shoes",
            ),
            Category(
              image_location:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRL1ueAWukgHz7RzSoMY392YxyH3xKLtLs23w&usqp=CAU",
              image_caption: "Pants",
            ),
            Category(
              image_location:
                  "https://png.pngtree.com/png-vector/20190512/ourlarge/pngtree-hat-icon-png-image_1034176.jpg",
              image_caption: "Hats",
            ),
          ],
        ),
      ],
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
      margin: EdgeInsets.only(
        bottom: 10.0,
        right: 6.0,
        left: 8.0,
        top: 5.0,
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                image_location,
                width: 45.0,
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  image_caption,
                  style: GoogleFonts.aclonica(
                    color: Colors.grey[600],
                    fontSize: 11.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
