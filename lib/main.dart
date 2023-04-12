import'package:flutter/material.dart';

import 'Home/homeScreen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homeScreen(),
      },
    ),
  );
}