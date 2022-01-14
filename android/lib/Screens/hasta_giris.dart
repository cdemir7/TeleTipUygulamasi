import 'package:deneme_1/server_util/classes.dart';
import 'package:deneme_1/server_util/requests.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:deneme_1/Screens/hasta_kayit.dart';
import 'package:deneme_1/server_util/processed_requests.dart';
import 'package:flutter/material.dart';
import './hasta_ana_ekrani.dart';
import 'package:deneme_1/server_util/classes.dart';

class Hasta_Giris extends StatelessWidget {
  static int id = 0;
  static String ad = "";
  static String soyad = "";
  static String eposta = "";
  static String sifre = "";

  Hasta hasta = Hasta(
      hasta_ID: id,
      hasta_ISIM: ad,
      hasta_SOYISIM: soyad,
      hasta_MAIL: eposta,
      hasta_SIFRE: sifre);

  final mailController = TextEditingController();
  final sifreController = TextEditingController();
  static bool kontrol = false;
  Future hastaGirisSorgusu(String hasta_MAIL, String hasta_SIFRE) async {
    List<Hasta> hastaList = await hastaGetRequest();

    for (var item in hastaList) {
      if (hasta_MAIL == item.hasta_MAIL && hasta_SIFRE == item.hasta_SIFRE) {
        id = item.hasta_ID;
        ad = item.hasta_ISIM;
        soyad = item.hasta_SOYISIM;
        eposta = item.hasta_MAIL;
        sifre = item.hasta_SIFRE;
        kontrol = true;
      } else {
        kontrol = false;
      }
    }
  }

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
              //inputFormatters: [new WhitelistingTextInputFormatter(new RegExp('[\\.]')),],
              controller: mailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mail adresinizi Giriniz ....',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: sifreController,
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
                    onPressed: () {
                      hastaGirisSorgusu(
                          mailController.text, sifreController.text);
                      if (kontrol) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hasta_Ana_Ekrani(hasta)));
                      }
                    },
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
