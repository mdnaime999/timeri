import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

ThemeData light = ThemeData(
  backgroundColor: Colors.grey.shade100,
  primaryColor: Colors.yellow,
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.grey,
    iconTheme: MaterialStateProperty.all(
      IconThemeData(color: Colors.green),
    ),
  ),
  buttonTheme: ButtonThemeData(padding: EdgeInsets.all(10.sp)),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.indigo[900],
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
    ),
    headline2: TextStyle(
      color: Colors.indigo[900],
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
    ),
    headline3: TextStyle(
      color: Colors.indigo[900],
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.grey.shade200,
  ),
  dialogBackgroundColor: Colors.amber,
  dialogTheme: DialogTheme(
    backgroundColor: Colors.white,
  ),
);
