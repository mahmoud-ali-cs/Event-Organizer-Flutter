import 'package:eventorganizerflutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({@required this.name, @required this.active});

  final String name;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style: kCategoriesTextStyle.copyWith(color: kMainTextColor),
        ),
        SizedBox(
          height: 5.0,
        ),
        Icon(
          Icons.brightness_1,
          size: 5,
          color: active ? Colors.black : Colors.transparent,
        ),
      ],
    );
  }
}
