import 'package:flutter/material.dart';
import 'package:widget_olusturma_klasorleme/ui/buton.dart';

class ResimveGovde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        child: Text("İmage", style: TextStyle(fontSize: 18)),
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
                        placeholder: "assets/ui/loading.gif",
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
          child: Butonlar(),
        )
      ],
    );
  }
}

void uzunMethod() {
  debugPrint("Bu uzun bir metotdur");
}
