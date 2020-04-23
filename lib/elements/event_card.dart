import 'package:eventorganizerflutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1.28 / 1,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 18,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                  child: Image(
                    image: AssetImage("images/event.png"),
//                                      fit: BoxFit.fitWidth,
//                            height: 10.0, //150.0
//                                      width: double.infinity,
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: Align(
                        alignment: Alignment.center,
                        child: AspectRatio(
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
                                  style: kCategoriesTextStyle.copyWith(
                                      color: Colors.white),
                                ),
                                Text('13',
                                    style: kCategoriesTextStyle.copyWith(
                                        color: Colors.black54)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Tea Ceremony',
                            style: kCategoriesTextStyle.copyWith(
                              color: kMainTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '1270 Madison Avenue',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
