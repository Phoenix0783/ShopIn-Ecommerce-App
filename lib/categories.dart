import 'package:ecommerce/category_itemlist.dart';
import 'package:ecommerce/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3F3F3),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffF3F3F3),
          title: Text(
            'Categories',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight, child: HomePage())),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[Icon(Icons.shopping_bag, size: 10)],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 55,
                  width: 150,
                  child: Center(
                    child: Text(
                      'Woman',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                      )),
                ),
                Container(
                  height: 55,
                  width: 150,
                  child: Center(
                    child: Text(
                      'Man',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: CategoryItemList())),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 35),
                      width: 20,
                      child: Image.asset('lib/dress.png', height: 35),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Clothing',
                              style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        width: 20,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          size: 30,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: 20,
                    child: Image.asset('lib/sunglasses.png', height: 35),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Accesories',
                            style: GoogleFonts.poppins(
                                letterSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 20,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: 20,
                    child: Image.asset('lib/handbag.png', height: 35),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Handbags',
                            style: GoogleFonts.poppins(
                                letterSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 20,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: 20,
                    child: Image.asset('lib/console.png', height: 35),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Gaming',
                            style: GoogleFonts.poppins(
                                letterSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 20,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: 20,
                    child: Image.asset('lib/sneakers.png', height: 35),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Shoes',
                            style: GoogleFonts.poppins(
                                letterSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 20,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: 20,
                    child: Image.asset('lib/sports.png', height: 35),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Sports',
                            style: GoogleFonts.poppins(
                                letterSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 20,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ));
  }
}
