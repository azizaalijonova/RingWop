import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'favorites_page.dart';
import 'user_profile.dart';
import 'sign_in.dart';
import 'registration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ring Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Color(0xFFfaf3a5),
        ),
        scaffoldBackgroundColor: Color(0xFFfaf3a5),
      ),
      home: MainPage(),
    );
  }
}
