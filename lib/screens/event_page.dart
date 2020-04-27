import 'package:eventorganizerflutter/constants.dart';
import 'package:eventorganizerflutter/elements/date_card.dart';
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
                  bottom: Radius.circular(40.0),
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
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                child: Image(
                  image: AssetImage("images/map.png"),
                  height: 150.0,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 35.0),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        child: RawMaterialButton(
                          fillColor: Color(0xCCFFFFFF),
                          shape: CircleBorder(),
                          elevation: 0.0,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        child: RawMaterialButton(
                          fillColor: Color(0xCC20257a),
                          elevation: 0.0,
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
              SizedBox(height: 120.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Expanded(
                    child: Container(
                      height: 180.0,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: <Widget>[
                                    DateCard(),
                                    SizedBox(width: 10.0),
                                    Expanded(
                                      child: Text(
                                        'World Dog Expo by WDE',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xFFff615f),
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      '520 8th Avenue (Studio 17N)',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      color: Color(0xFFff615f),
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      '8:00 AM - 10:00 PM',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30.0),
                ],
              ),
//              SizedBox(height: 230.0),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70.0,
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
              ),
            ],
          ),
        ],
      ),
//        child:
    );
  }
}
