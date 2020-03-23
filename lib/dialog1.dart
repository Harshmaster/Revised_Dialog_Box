import 'package:flutter/material.dart';

class Dialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 510,
      margin: EdgeInsets.only(
          top: 0, //60,
          left: 0, //10,
          right: 0 //10,
          ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xffFAF2D9),
          border: Border.all(
            color: Colors.amber,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(35)),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.close,
                  color: Color.fromRGBO(82, 90, 101, 1),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  'New Notice',
                  style: TextStyle(
                    color: Color.fromRGBO(82, 90, 101, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 4,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: Color.fromRGBO(82, 90, 101, 1),
                  width: 1,
                ),
                color: Colors.white),
            height: 130,
            width: 170,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Image',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(82, 90, 101, 1)),
                    ),
                  ),
                  Container(
                    child: Text(
                      '(Optional)',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(82, 90, 101, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromRGBO(82, 90, 101, 1),
            child: Text(
              'Upload',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w900,
                  fontSize: 16),
            ),
            onPressed: () {},
          ),
          Container(
            margin: EdgeInsets.only(top: 4, bottom: 20),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(82, 90, 101, 1),
                  width: 1,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: Container(
              alignment: Alignment(0, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(82, 90, 101, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 20),
            width: 300,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: Align(
              alignment: Alignment(0, 0),
              child: Container(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Message',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(82, 90, 101, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromRGBO(82, 90, 101, 1),
            child: Text(
              'Send',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
