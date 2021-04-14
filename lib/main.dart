import 'package:ecomm_test_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:ecomm_test_app/util/mytheme.dart';
void main() => runApp(
    MyRootApp());

class MyRootApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShareRide2go',
      debugShowCheckedModeBanner: false,
      theme: my_theme.theme_app_Light,
      home: login(),
    );
  }
}