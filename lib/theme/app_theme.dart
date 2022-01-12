
import 'package:flutter/material.dart';

class AppTheme {

      static Color primary = Colors.indigo.shade900;
      static final ThemeData lightTheme = ThemeData.light().copyWith(
        //primary color
        primaryColor: Colors.indigo[900],
        appBarTheme:  AppBarTheme(
          color: primary
        ),
        textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
             primary: primary,
             shape: const StadiumBorder(),
             
           )
        ),
          inputDecorationTheme: InputDecorationTheme(
            floatingLabelStyle: TextStyle(
              color: primary
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10), topLeft: Radius.circular(10))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(10))
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10), topLeft: Radius.circular(10))
            ),
        )
      );
// DART THEME
 static Color darkPrimaryColor = Colors.indigo.shade900;
 static Color darkBtnColor = Colors.indigo.shade300;
 static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //primary color
        primaryColor: Colors.indigo[300],
        appBarTheme:  AppBarTheme(
          color: darkPrimaryColor
        ),
        scaffoldBackgroundColor: Colors.black,
        textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(primary: darkBtnColor)
        )
      );
}