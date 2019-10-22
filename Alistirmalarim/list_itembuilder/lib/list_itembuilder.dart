import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ogrenci.dart';

class ListeItemBuilder extends StatelessWidget {
  List<Ogrenci> TumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    return ListView.separated(
      separatorBuilder: (context, index) => Padding(
          padding: (index % 5 == 0 && index != 0)
              ? EdgeInsets.symmetric(horizontal: 20)
              : EdgeInsets.symmetric(horizontal: 100),
          child: Divider(
            thickness: 3,
            color: Colors.red[200],
          )),
      itemCount: 20,
      itemBuilder: (context, index) => Card(
        elevation: 4,
        margin: EdgeInsets.all(10),
        color: (index % 2 == 0) ? Colors.yellow : Colors.blue,
        child: ListTile(
          onTap: () {
            toastMesajGoster(index, false);
            alertDialogGoster(context, index);
          },
          onLongPress: () {
            toastMesajGoster(index, true);
          },
          contentPadding: EdgeInsets.all(20),
          leading: Icon(Icons.contacts),
          title: Text(TumOgrenciler[index].isim),
          subtitle: Text(TumOgrenciler[index].aciklama),
          trailing: Icon(Icons.contacts),
        ),
      ),
    );
  }

  void ogrenciVerileriniGetir() {
    TumOgrenciler = List.generate(
      300,
      (index) => Ogrenci(
          "Öğrenci $index ", "Ögrenci $index", index % 2 == 0 ? true : false),
    );
  }

  void toastMesajGoster(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
        msg: uzunBasilma
            ? " $index nolu eleman uzun basıldı " +
                TumOgrenciler[index].toString()
            : " $index nolu eleman tıklandı " + TumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: uzunBasilma ? Colors.red : Colors.black87,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialogGoster(BuildContext ctx, int index) {
    showDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (ctx) {
        return Container(
          padding: EdgeInsets.only(top: 40),
          margin: EdgeInsets.only(top: 50, bottom: 50),
          child: AlertDialog(
            backgroundColor: Colors.purple.shade100,
            title: Text("Alert Dialog "),
            content: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: ListBody(
                children: <Widget>[
                  Text("Seçilen öğrenci bilgisi :" + TumOgrenciler[index].isim),
                  Text("Açıklama : " + TumOgrenciler[index].aciklama),
                  Image.network(
                      "https://miro.medium.com/max/363/1*GWCpeJ4aRz6NvUS-mULcdg.png",
                      height: 220,
                      width: 181.5,
                      fit: BoxFit.cover),
                  SelectableText("\nA material design alert dialog."),
                  SelectableText(
                      "\nAn alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content."),
                  SelectableText(
                      "\nIf the content is too large to fit on the screen vertically, the dialog will display the title and the actions and let the content overflow, which is rarely desired. Consider using a scrolling widget for content, such as SingleChildScrollView, to avoid overflow. (However, be aware that since AlertDialog tries to size itself using the intrinsic dimensions of its children, widgets such as ListView, GridView, and CustomScrollView, which use lazy viewports, will not work. If this is a problem, consider using Dialog directly.)"),
                  SelectableText(
                      "\nFor dialogs that offer the user a choice between several options, consider using a SimpleDialog."
                      "Typically passed as the child widget to showDialog, which displays the dialog")
                ],
              ),
            ),
            actions: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    splashColor: Colors.red.shade200,
                    child: Text("Tamam", style: TextStyle(color: Colors.white)),
                    elevation: 5,
                    onPressed: () => Navigator.pop(ctx),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 38.0),
                    child: RaisedButton(
                      splashColor: Colors.red.shade200,
                      child:
                          Text("Kapat", style: TextStyle(color: Colors.white)),
                      elevation: 5,
                      onPressed: () => Navigator.pop(ctx),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

// Bu sınıfı ogrenci.dart isimli ayrı bir dosyaya taşıdım

/* class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return ("Seçilen öğrenci adı : $_isim , açıklaması : $_aciklama açıklaması ");
  }
} */
