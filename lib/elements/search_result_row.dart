import 'package:flutter/material.dart';

class SearchResultRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: <Widget>[
              Text(
                'Sun',
                style: TextStyle(
                  color: Color(0xFF20257a),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '08',
                style: TextStyle(
                  color: Color(0xFFff615f),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 100.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 3.0,
                ),
              ],
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'images/event.png',
                      height: 80.0,
                      width: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      10.0,
                      0.0,
                      20.0,
                      0.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'World Dog Expo by WDE',
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xFF20257a),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '520 8th Avenue',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 25.0),
      ],
    );
  }
}
