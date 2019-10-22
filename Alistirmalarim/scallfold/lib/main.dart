import 'package:flutter/material.dart';

void main() => runApp(ContainerPage());

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dart Dersleri Ödev'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  height: 70,
                  width: 70,
                  child: Text(
                    "D",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  height: 70,
                  width: 70,
                  child: Text(
                    "A",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  height: 70,
                  width: 70,
                  child: Text(
                    "R",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5, top: 5),
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  height: 70,
                  width: 70,
                  child: Text(
                    "T",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "E",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "R",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "S",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "L",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "E",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "R",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5,bottom: 5),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
              height: 70,
              width: 70,
              child: Text(
                "İ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
