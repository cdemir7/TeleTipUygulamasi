import 'package:flutter/material.dart';

class Giris_Ekrani extends StatelessWidget {
  const Giris_Ekrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 320),
            child: RaisedButton(
              highlightColor: Colors.lightBlueAccent,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              child: Text(
                "Doktor",
                style: TextStyle(fontSize: 40),
              ),
              padding: EdgeInsets.all(35),
              onPressed: () {},
              textColor: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            child: RaisedButton(
              highlightColor: Colors.lightBlueAccent,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              child: Text(
                "Hasta",
                style: TextStyle(fontSize: 40),
              ),
              padding: EdgeInsets.all(40),
              onPressed: () {},
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    ));
  }
}
