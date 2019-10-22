import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("stateless build metodu tetiklendi");

    return MaterialApp(
      title: "Uygulama Adı",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "Stfull Widget Sayı Arttır Azalt"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int sayac = 0;
  final String title;
  MyHomePage({this.title}) {
    debugPrint("MyHomePage Stateful Widget contructor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage createState tetiklendi");

    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState() {
    debugPrint("MyHomePage State contructor");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState build metodu tetiklendi");

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.arrow_upward, size: 36),
            onPressed: () {
              setState(() {
                debugPrint("setState çağırıldı");

                sayacDegeriniArttir();
              });
            },
            elevation: 10,
            splashColor: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: FloatingActionButton(
              child: Icon(Icons.arrow_downward, size: 36),
              onPressed: () {
                setState(() {
                  debugPrint("setState çağırıldı");

                  sayacDegeriniAzalt();
                });
              },
              elevation: 10,
              splashColor: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 375,
          margin: EdgeInsets.symmetric(vertical: 220),
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Butona tıklanma sayısı :",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Text(
                "${widget.sayac}",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sayacDegeriniArttir() {
    widget.sayac++;
    debugPrint("Sayac degeri : ${widget.sayac}");
  }

  void sayacDegeriniAzalt() {
    widget.sayac--;
    debugPrint("Sayac degeri : ${widget.sayac}");
  }
}
