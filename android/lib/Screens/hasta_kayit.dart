//satır 17-20 arasındaki değişkenler deneme yapmak için oluşturuldu
//controller lar çalışmıyor
//satır 71 kayıt işlemini yapıyor. şuan yorum satırında

import 'package:deneme_1/server_util/classes.dart';
import 'package:deneme_1/server_util/processed_requests.dart';
import 'package:flutter/material.dart';
import 'package:deneme_1/Screens/hasta_giris.dart';

class HastaKayitEkrani extends StatefulWidget {
  // HastaKayitEkrani({Key? key}) : super(key: key);

  @override
  _HastaKayitEkraniState createState() => _HastaKayitEkraniState();
}

class _HastaKayitEkraniState extends State<HastaKayitEkrani> {
  //bunlar geçici olarak tutuluyor. controller lar çalışmıyor
  static String ad = "Mustafa";
  static String soyad = "Uysal";
  static String eposta = "mustafa@gmail.com";
  static String sifre = "123123123";

  TextEditingController adController = TextEditingController();
  TextEditingController soyadController = TextEditingController();
  TextEditingController ePostaController = TextEditingController();
  TextEditingController sifreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HASTA KAYIT EKRANI"),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: adController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'AD',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: soyadController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SOYAD',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: ePostaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-POSTA',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: sifreController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ŞİFRE',
              ),
            ),
            RaisedButton(
              onPressed: () {
                hastaKayit(ad, soyad, eposta, sifre);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hasta_Giris()));
              },
              child: Text("KAYIT OL"),
            ),
          ],
        ),
      ),
    );
  }
}
