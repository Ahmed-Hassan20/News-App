import 'package:flutter/material.dart';
import 'package:news/HomeScreen.dart';
import 'package:news/my_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
      },
      theme: mytheme.lighttheme,
    );
  }
}
