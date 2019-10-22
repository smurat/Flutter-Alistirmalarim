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
              padding: EdgeInsets.only(top: 10, bottom: 10),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.blueAccent.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network(
                              "http://pngimg.com/uploads/youtube/youtube_PNG15.png"),
                          Text("İmage", style: TextStyle(fontSize: 18)),
                          SizedBox(
                            height: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.blueAccent.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            child: Image.network(
                                "http://pngimg.com/uploads/youtube/youtube_PNG15.png"),
                          ),
                          Text("İmage", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
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
                            child:
                                Text("İmage", style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.blueAccent.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FadeInImage.assetNetwork(
                            placeholder: "assets/images/loading.gif",
                            image:
                                "https://www.kulturportali.gov.tr/repoKulturPortali/large/uploads/hasandagi.-13_0.jpg",
                          ),
                          Text("Fadein İmage", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.blueAccent.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: FlutterLogo(
                              size: 80,
                              colors: Colors.orange,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Flutter Logo",
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.blueAccent.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Placeholder(
                                strokeWidth: 3,
                                color: Colors.yellow.shade300,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Placeholder",
                                style: TextStyle(
                                    fontSize: 18, fontStyle: FontStyle.italic)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    disabledTextColor: Colors.purple,
                    textColor: Colors.deepPurple,
                    color: Colors.orange.shade200,
                    splashColor: Colors.blue.shade200,
                    onPressed: () =>
                        debugPrint("Bu bir fatarrow debugPrint() çıktısıdır"),
                    child: Text(
                      "Fat Arrow",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  RaisedButton(
                    disabledTextColor: Colors.purple,
                    textColor: Colors.deepPurple,
                    color: Colors.orange.shade200,
                    splashColor: Colors.blue.shade200,
                    onPressed: () {
                      print("lamda expression print");
                      debugPrint("lamda expression debugprint");
                    },
                    child: Text(
                      "Birden fazla statement",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  RaisedButton(
                    disabledTextColor: Colors.purple,
                    textColor: Colors.black,
                    color: Colors.orange.shade200,
                    splashColor: Colors.blue.shade200,
                    onPressed: uzunMethod,
                    child: Text(
                      "Class dışı Metod ",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  RaisedButton(
                    disabledTextColor: Colors.purple,
                    textColor: Colors.green.shade800,
                    color: Colors.orange.shade200,
                    splashColor: Colors.blue.shade200,
                    onPressed: () => uzunMethod(),
                    child: Text(
                      "Sınıf Dışı Metod",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  IconButton(
                      onPressed: uzunMethod,
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 50,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void uzunMethod() {
  debugPrint("Bu uzun bir metotdur");
}
