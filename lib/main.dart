//import 'dart:ffi';

import 'dart:ffi';

import 'package:eventorganizerflutter/constants.dart';
import 'package:eventorganizerflutter/elements/category.dart';
import 'package:eventorganizerflutter/elements/event_card.dart';
import 'package:eventorganizerflutter/screens/event_page.dart';
import 'package:eventorganizerflutter/screens/home_page.dart';
import 'package:eventorganizerflutter/screens/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        body: SearchPage(),
      ),
    );
  }
}

//  #F02A28
//  #F0F2F5
//  #BB3633
//  #66BDEA
//  #BDB3B1
//  #B08979
//  #392E2F

//Image thumbnail = copyResize(image, width: 120);
