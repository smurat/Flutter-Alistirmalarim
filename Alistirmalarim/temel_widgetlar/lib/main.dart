import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dart Dersleri Ödev'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "İmage ve Buton Türleri",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              padding: EdgeInsets.only(bottom: 10),
            ),
            Padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            "http://pngimg.com/uploads/youtube/youtube_PNG15.png"),
                        Text(
                          "İmage",
                          style: TextStyle(fontSize: 18),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          child: Image.network(
                              "http://pngimg.com/uploads/youtube/youtube_PNG15.png"),
                        ),
                        Text(
                          "İmage",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Image.network(
                              "http://pngimg.com/uploads/youtube/youtube_PNG15.png"),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "İmage",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.only(bottom: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "İmage",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "İmage",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "İmage",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "İmage",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "İmage",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "İmage",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
