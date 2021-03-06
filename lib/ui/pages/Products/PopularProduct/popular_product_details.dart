import 'package:ecommerce/ui/pages/Configuration/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularProductDetails extends StatelessWidget {
  final String imageLocationDetail;
  final String imageNameDetail;
  final int imageNewPriceDetail;
  final int imageOldPriceDetail;

  PopularProductDetails(
      {this.imageLocationDetail,
      this.imageNameDetail,
      this.imageNewPriceDetail,
      this.imageOldPriceDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Details",
            style: GoogleFonts.paprika(
              color: blackColor,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: whiteColor,
        leading: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: blackColor,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              height: 315.0,
              child: Image.asset(
                imageLocationDetail,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 465.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 25.0),
                    child: Text(imageNameDetail,
                        style: GoogleFonts.aclonica(
                          fontSize: 35.0,
                          color: whiteColor,
                        )),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("\$$imageNewPriceDetail",
                            style: GoogleFonts.aclonica(
                              fontSize: 20.0,
                              color: Colors.green[400],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("\$$imageOldPriceDetail",
                            style: GoogleFonts.aclonica(
                              fontSize: 20.0,
                              color: Colors.red[400],
                              decoration: TextDecoration.lineThrough,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("OPTIONS",
                        style: GoogleFonts.paprika(
                          fontSize: 10.0,
                          color: Colors.grey[300],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35.0,
                          child: MaterialButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Size",
                                    style: GoogleFonts.aclonica(
                                      color: blackColor,
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: blackColor,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          height: 35.0,
                          child: MaterialButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Color",
                                    style: GoogleFonts.aclonica(
                                      color: blackColor,
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: blackColor,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                        Container(
                          height: 35.0,
                          child: MaterialButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Qty",
                                    style: GoogleFonts.aclonica(
                                      color: blackColor,
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: blackColor,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("DESCRIPTIONS",
                        style: GoogleFonts.paprika(
                          fontSize: 10.0,
                          color: Colors.grey[300],
                        )),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                        "- Discount (50%) \n- Product of Thailand \n- 100% of quality",
                        style: GoogleFonts.aclonica(
                          fontSize: 14.0,
                          color: whiteColor,
                        )),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                              color: whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                "Buy Now",
                                style: GoogleFonts.aclonica(
                                  color: blackColor,
                                ),
                              ),
                              onPressed: () {}),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: whiteColor,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: whiteColor,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
