import 'package:flutter/material.dart';

class mytheme {
  static Color black = Color(0xff000000);
  static Color primarycolor = Color(0xff39a452);
  static Color white = Colors.white;
  static Color grey = Color(0xffC8C9CB);
  static Color red = Color(0xffc81c22);
  static Color darkblue = Color(0xff003e8f);
  static Color pink = Color(0xffec1e79);
  static Color brown = Color(0xffce7e48);
  static Color lightblue = Color(0xff4881ce);
  static Color yellow = Color(0xfff1d252);



  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primarycolor,
      appBarTheme: AppBarTheme(
          backgroundColor: mytheme.primarycolor,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)))
      ),
      textTheme: TextTheme(
        titleLarge:
            TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: black),
        titleMedium:
            TextStyle(fontSize:18, fontWeight: FontWeight.w600, color: black),
        titleSmall:
            TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primarycolor))),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primarycolor),
      bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)))),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: primarycolor,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 30)));
}

// static ThemeData darkTheme = ThemeData(
//   primaryColor: primarycolor,
//   scaffoldBackgroundColor: bgdark,
//   appBarTheme: AppBarTheme(
//     backgroundColor: mytheme.primarycolor,
//     elevation: 0,
//     iconTheme: IconThemeData(
//       color: white,
//     ),
//   ),
//   textTheme: TextTheme(
//     titleLarge: TextStyle(
//       fontSize: 22,
//       fontWeight: FontWeight.w700,
//       color: white,
//     ),
//     titleMedium: TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w600,
//       color: white,
//     ),
//     titleSmall: TextStyle(
//       fontSize: 18,
//       fontWeight: FontWeight.w400,
//       color: grey,
//     ),
//   ),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(primarycolor))),
//   floatingActionButtonTheme:
//       FloatingActionButtonThemeData(backgroundColor: primarycolor),
//   bottomSheetTheme: BottomSheetThemeData(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
//   bottomAppBarTheme: BottomAppBarTheme(color: darkblack),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       selectedItemColor: primarycolor,
//       unselectedItemColor: grey,
//       showUnselectedLabels: false,
//       selectedIconTheme: IconThemeData(size: 30)),
// );
