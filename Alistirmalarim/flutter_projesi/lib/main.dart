import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Scaffold(
        body: Container(
          color: Colors.yellow,
        ),
        appBar: new AppBar(
          title: Text("Flutter ilk proje"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed:null,
            child: Icon(
              Icons.add_alarm
            ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
