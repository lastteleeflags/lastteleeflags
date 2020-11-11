import "package:flutter/material.dart";
import 'app_example/Login_Screen.dart';
import 'package:WINWIN/terms_service.dart/help.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: LoginPage());
    //
  }
}
