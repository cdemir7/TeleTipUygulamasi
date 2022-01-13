import 'package:deneme_1/server_util/processed_requests.dart';
import 'package:flutter/material.dart';
import './doktor_ana_ekrani.dart';
import 'package:deneme_1/server_util/classes.dart';

class Doktor_Giris extends StatelessWidget {
  //Doktor_Giris({Key? key}) : super(key: key);
  final epostaController = TextEditingController();
  final sifreController = TextEditingController();

  @override
  static int id = 123;
  static String ad = "Kanber";
  static String soyad = "Kanberoğlu";
  static String eposta = "kanber@gmail.com";
  static String sifre = "12341234";

  //Doktor doktor2 = doktorGirisSorgusu(eposta, sifre);

  Doktor doktor = Doktor(
      doktor_ID: id,
      doktor_ISIM: ad,
      doktor_SOYISIM: soyad,
      doktor_MAIL: eposta,
      doktor_SIFRE: sifre);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DOKTOR GİRİŞ EKRANI"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: epostaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mail adresinizi Giriniz ....',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Material(
              child: TextFormField(
                controller: sifreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Şifrenizi Giriniz...',
                ),
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
                    onPressed: () {
                      /*    var nesne = doktorGirisSorgusu(
                          epostaController.text, sifreController.text); */

                      print(epostaController.text);
                      print(sifreController.text);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Doktor_Ana_Ekrani(doktor)));
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
