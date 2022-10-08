import 'package:ecommerce/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  @override
  void dispose() {
    super.dispose();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    var sz = MediaQuery.maybeOf(context)!.size;

    var appbarheight = AppBar().preferredSize.height;
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image(
          height: 330,
          image: AssetImage('lib/fashion1.png'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Explore the',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 38, fontWeight: FontWeight.w500)),
              ),
              Text(
                'Fashion Trends',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 38, fontWeight: FontWeight.w500)),
              ),
              Text(
                'We form and assortment that follows trend',
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
                            type: PageTransitionType.fade, child: HomePage())),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 15),
                    )),
              )
            ],
          ),
        )
      ],
    ));
  }
}
