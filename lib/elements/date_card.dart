import 'package:eventorganizerflutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateCard0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: Card(
        elevation: 0,
        color: Color(0xFFaae1f7),
        margin: EdgeInsets.symmetric(
//                                                horizontal: 17.0,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Oct',
              style: kCategoriesTextStyle.copyWith(color: Colors.white),
            ),
            Text('13',
                style: kCategoriesTextStyle.copyWith(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 50.0,
      child: Card(
        elevation: 0,
        color: Color(0xFFaae1f7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Oct',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '13',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
