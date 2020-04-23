import 'package:eventorganizerflutter/constants.dart';
import 'package:eventorganizerflutter/elements/category.dart';
import 'package:eventorganizerflutter/elements/event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Category> categories = [
    Category(
      name: "Populer",
      active: true,
    ),
    Category(
      name: "Feautered",
      active: false,
    ),
    Category(
      name: "Trending",
      active: false,
    ),
    Category(
      name: "Recent",
      active: false,
    ),
    Category(
      name: "Sport",
      active: false,
    ),
    Category(
      name: "Technology",
      active: false,
    ),
  ];

  final List<EventCard> events = [
    EventCard(),
    EventCard(),
    EventCard(),
    EventCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 37,
                child: Container(
                  color: Color(0x55e7f6fe),
                ),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 11,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        flex: 15,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 85,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                            ),
                            color: Color(0xFFaae1f7),
                          ),
//                          child: Text('this is me!'),
//                          child: Align(
//                            alignment: Alignment(-0.7, -0.9),
//                            child: Image(
//                              image: AssetImage('images/map-nav.png'),
//                              width: 150.0,
//                            ),
//                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 330.0,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
//                    color: Color(0xFF66BDEA),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Home',
                        style: kCategoriesTextStyle.copyWith(
                          color: kMainTextColor,
                          fontSize: 20.0,
                        ),
                      ),
//                      0xFF20257a
                      Container(
                        width: 45.0,
                        height: 45.0,
                        child: new RawMaterialButton(
                          shape: new CircleBorder(),
                          elevation: 0.0,
                          fillColor: Color(0xFF20257a),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          onPressed: () {},
                        ),
                      ),

                      Text(
                        'Chat',
                        style: kCategoriesTextStyle.copyWith(
                          color: kMainTextColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25.0,
              ),
              Expanded(
                child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "You're in",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFFff615f),
//                          color: Color(0xFFF02A28),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "New York",
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 3.0,
                              color: Color(0xFFff615f),
//                              color: Color(0xFFF02A28),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 38.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: new RawMaterialButton(
                            shape: new CircleBorder(),
                            elevation: 0.0,
                            fillColor: Color(0xFFff615f),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Expanded(
                      flex: 2,
                      child: ListView.separated(
                        padding: EdgeInsets.only(right: 10.0),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            categories[index],
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 30.0,
                          );
                        },
                        itemCount: categories.length,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: ListView.separated(
                        padding: EdgeInsets.only(right: 10.0),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            events[index],
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 15.0,
                          );
                        },
                        itemCount: events.length,
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
//          Column(
//            children: <Widget>[
//              Expanded(
////                flex: 11,
//                child: Align(
//                  alignment: Alignment.topRight,
//                  child: Image(
//                    image: AssetImage('images/map-nav.png'),
//                    width: 200.0,
//                  ),
//                ),
//              ),
//            ],
//          ),
        ],
      ),
    );
  }
}
