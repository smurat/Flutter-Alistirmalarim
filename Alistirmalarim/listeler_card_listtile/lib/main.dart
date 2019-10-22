import 'package:flutter/material.dart';
import 'listeornek.dart';

void main() => runApp(ListeKonuAnlatimi());

class ListeKonuAnlatimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.purple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Liste Dersleri"),
        ),
        body: ListeDenemeler(),
      ),
    );
  }
}
