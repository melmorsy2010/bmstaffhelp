import 'dart:async';

import 'package:bmstaffhelp/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'lock2.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        'MyHome': (context) {
          return LoginScreen();
        },
      },
    );
  }
}
