import 'package:eventorganizerflutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  final String paragraph =
      "This weekend spectacular event will celebrate dogs everywhere in a large-scale...";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.0),
                ),
                child: Image(
                  image: AssetImage("images/event.png"),
                ),
              ),
              SizedBox(height: 160.0),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 30.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            paragraph,
                            style: TextStyle(
                              height: 1.55,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
//                              textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: Text(
                              'See more',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF20257a),
                              ),
//                                color: Color(0xFF20257a),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.0),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.0)),
                  child: Image(
                    image: AssetImage("images/map.png"),
                    height: 150.0,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 25,
                child: Container(),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFff615f),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40.0),
                    ),
                  ),
                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(width: 30.0),
                      Text(
                        "\$45.90 /guest",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 13.0,
                                horizontal: 22.0,
                              ),
                              child: Text(
                                'Get a ticket',
                                style: TextStyle(
                                  color: Color(0xFFff615f),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
//        child:
    );
  }
}
