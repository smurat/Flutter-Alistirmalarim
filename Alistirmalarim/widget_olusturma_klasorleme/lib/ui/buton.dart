import "package:flutter/material.dart";
import 'resim.dart';

class Butonlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
