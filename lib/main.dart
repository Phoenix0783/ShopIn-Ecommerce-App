import 'package:flutter/material.dart';
import './welcome_page_1.dart';
import './welcome_page_2.dart';
import './home_page.dart';
import 'package:flutter/services.dart';
import './categories.dart';
import './category_itemlist.dart';
import './item_data.dart';
import './cart.dart';
import './confirm_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage1(),
    );
  }
}
