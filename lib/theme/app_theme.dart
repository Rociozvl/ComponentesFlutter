import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromARGB(255, 233, 145, 176)  ;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 190, 81, 146),
        //App abr theme
        appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 191, 117, 142),
        elevation: 15,
        ),


        scaffoldBackgroundColor: Colors.black,


        textButtonTheme: TextButtonThemeData(
         style: TextButton.styleFrom( foregroundColor:primary),
        ),

          //floatingActionsButton
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
        ),


        elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10) ,
            topRight: Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only( 
            bottomLeft: Radius.circular(10) ,
            topRight: Radius.circular(10))
        ),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.only( 
            bottomLeft: Radius.circular(10) ,
            topRight: Radius.circular(10))
        )
      )
  );
  
}