import 'package:eventorganizerflutter/elements/search_option_card.dart';
import 'package:eventorganizerflutter/elements/search_result_row.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool firstActive = true;

  List<SearchResultRow> rows = [
    SearchResultRow(),
    SearchResultRow(),
    SearchResultRow(),
    SearchResultRow(),
    SearchResultRow(),
    SearchResultRow(),
    SearchResultRow(),
    SearchResultRow(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            height: 190.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50.0),
              ),
              color: Color(0xFFaae1f7),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        child: RawMaterialButton(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        child: RawMaterialButton(
                          child: Icon(
                            Icons.tune,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    decoration: null,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for ...',
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  height: 70.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                firstActive = true;
                              });
                            },
                            child: SearchOptionCard(
                              text: 'Events',
                              cardColor: firstActive
                                  ? Color(0xFF20257a)
                                  : Colors.transparent,
                              textColor:
                                  firstActive ? Colors.white : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                firstActive = false;
                              });
                            },
                            child: SearchOptionCard(
                              text: 'Organizers',
                              cardColor: firstActive
                                  ? Colors.transparent
                                  : Color(0xFF20257a),
                              textColor:
                                  firstActive ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last results',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: ListView.separated(
                  itemCount: rows.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 20.0),
                  itemBuilder: (BuildContext context, int index) {
                    return rows[index];
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
