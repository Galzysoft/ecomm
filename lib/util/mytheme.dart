import 'package:flutter/material.dart';

class my_theme  {
  static String light_or_dark;

 static ThemeData get theme_app_Light {

     return ThemeData(
       accentColor:  Color(0xFF292A2D),
       hintColor:  Color(0xFF656464),
       primaryColor:  Color(0xFF03ADC1),
textTheme: TextTheme(
  bodyText1: TextStyle(color:Color(0xFFAC1B1B)),



),
       inputDecorationTheme: InputDecorationTheme(

           labelStyle: TextStyle(
         color: Color(0xFF656464),),
           focusColor: Colors.white,
           hoverColor: Colors.white,
           fillColor:  Colors.white,
           filled: true),

     );


 }

}