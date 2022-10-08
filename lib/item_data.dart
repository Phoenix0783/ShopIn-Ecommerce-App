import 'package:ecommerce/cart.dart';
import 'package:ecommerce/category_itemlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable/expandable.dart';
import 'package:page_transition/page_transition.dart';

class ItemData extends StatelessWidget {
  const ItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRightWithFade,
                  child: CategoryItemList())),
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                // color: Colors.pink,
                width: double.infinity,
                height: 350,
                child: Image.asset(
                  'lib/pantsuit.webp',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                margin: EdgeInsets.only(top: 230),
                height: 360,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'White pantsuit',
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '580.00',
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      ExpandableNotifier(
                        // <-- Provides ExpandableController to its children
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expandable(
                              // <-- Driven by ExpandableController from ExpandableNotifier
                              collapsed: ExpandableButton(
                                  // <-- Expands when tapped on the cover photo
                                  child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 24),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Description',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(Icons.keyboard_arrow_down)
                                  ],
                                ),
                              )),
                              expanded: Column(children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 24),
                                  child: Text(
                                    'Stylish touch coat, classic, pleasant to the touch from natural materials',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                ),
                                ExpandableButton(
                                  // <-- Collapses when tapped on
                                  child: Icon(Icons.keyboard_arrow_up),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          'Choose size',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'XS',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'S',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'M',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'L',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'XL',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'XXL',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xffF5F5F5),
                                  child: Text(
                                    'XXXL',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            height: 55,
                            width: 200,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                onPressed: () => Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: Cart())),
                                icon: Icon(Icons.add),
                                label: Text(
                                  'Add to Basket',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
