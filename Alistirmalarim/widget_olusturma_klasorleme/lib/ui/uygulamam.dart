import 'package:flutter/material.dart';
import 'resim.dart';

class Uygulamam extends StatelessWidget {
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
       body: ResimveGovde(),
      ),
    );
  }
}
