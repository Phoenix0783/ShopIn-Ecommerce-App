import 'package:ecommerce/welcome_page_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    var sz = MediaQuery.maybeOf(context)!.size;

    var appbarheight = AppBar().preferredSize.height;
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image(
          height: 330,
          image: AssetImage('lib/fashion.png'),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'No more',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
              ),
              Text(
                'boring things',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
              ),
              Text(
                'Picking up accessories from popular European brand',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 15, color: Colors.grey)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  )),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: WelcomePage2())),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 15),
                    )),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
