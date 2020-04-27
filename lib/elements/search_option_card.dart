import 'package:flutter/material.dart';

class SearchOptionCard extends StatelessWidget {
  SearchOptionCard({this.cardColor, this.text, this.textColor, this.onTap});

  final Color cardColor;
  final String text;
  final Color textColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: this.cardColor,
      ),
      child: Center(
        child: Text(
          this.text,
          style: TextStyle(
            color: this.textColor,
            fontSize: 17.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
