// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utilities/routs.dart';
import 'package:flutter_application_2/widgets/theme.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        MyRoutes.loginroute: (context) => Login(),
        "/": (context) => HomePage(),
        MyRoutes.loginroute: (context) => Login(),
      },
    );
  }
}
