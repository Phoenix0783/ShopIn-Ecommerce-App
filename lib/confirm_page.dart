import 'package:ecommerce/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3F3F3),
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Place an order',
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Navigator.push(context,
                PageTransition(type: PageTransitionType.fade, child: Cart())),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 400,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: Text(
                                'Name',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Text(
                                'Joseph Joestar',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: Text(
                                'Phone Number',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Text(
                                '+91 4548156278',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: Text(
                                'Delivery address',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Text(
                                'SpeedWagon Foundation, New York',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey, fontSize: 16),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                    // Item ends ///////////////////////////////////////
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  margin: EdgeInsets.only(top: 270),
                  height: 222,
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Total price',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$ ',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black, fontSize: 22)),
                                  TextSpan(
                                    text: '690',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.check_box_rounded),
                              margin: EdgeInsets.only(right: 15),
                            ),
                            Text(
                              'Call me for clarification',
                              style: GoogleFonts.poppins(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            height: 60,
                            width: 160,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                onPressed: () {},
                                child: Text(
                                  'Confirm',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ),
                      )
                    ],
                  )),
                ),
              ],
            )
          ],
        ));
  }
}
