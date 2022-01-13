//Hasta nesnesi oluşturuldu, parametrelerine geçici değişkenler atandı
//hastaSorgusu Hasta nesnesi döndürüp, onun bütün bilgileri tutulmalı

import 'package:deneme_1/Screens/hasta_kayit.dart';
import 'package:deneme_1/server_util/processed_requests.dart';
import 'package:flutter/material.dart';
import './hasta_ana_ekrani.dart';
import 'package:deneme_1/server_util/classes.dart';

class Hasta_Giris extends StatelessWidget {
  static int id = 123;
  static String ad = "Mustafa";
  static String soyad = "Uysal";
  static String eposta = "mustafa@gmail.com";
  static String sifre = "123123123";

  Hasta hasta = Hasta(
      hasta_ID: id,
      hasta_ISIM: ad,
      hasta_SOYISIM: soyad,
      hasta_MAIL: eposta,
      hasta_SIFRE: sifre);

  TextEditingController mailController = TextEditingController();
  TextEditingController sifreController = TextEditingController();

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
                      hastaGirisSorgusu(mailController.toString(),
                          sifreController.toString());

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hasta_Ana_Ekrani(hasta)));
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
