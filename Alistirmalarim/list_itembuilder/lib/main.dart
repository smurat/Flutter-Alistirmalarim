import 'package:flutter/material.dart';
import 'list_itembuilder.dart';

void main() => runApp(ListeItemBuilderOrnek());

class ListeItemBuilderOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListeItemBuilder(),
      ),
    );
  }
}
