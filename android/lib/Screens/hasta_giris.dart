import 'package:android/Screens/hasta_kayit.dart';
import 'package:flutter/material.dart';
import './hasta_ana_ekrani.dart';

class Hasta_Giris extends StatelessWidget {
  const Hasta_Giris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HASTA GİRİŞ EKRANI"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mail adresinizi Giriniz ....',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Şifrenizi Giriniz...',
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                buttonPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                children: [
                  RaisedButton(
                    child: Text("Giriş"),
                    textColor: Colors.white,
                    color: Colors.lightBlueAccent,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Hasta_Ana_Ekrani())),
                  ),
                  RaisedButton(
                    child: Text("Kayıt Ol"),
                    textColor: Colors.white,
                    color: Colors.lightBlueAccent,
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HastaKayitEkrani())),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
