import 'package:flutter/material.dart';

Widget DoktorProfilBody() {
  String doktorAdi = "DOKTOR ADI";
  String doktorSoyadi = "DOKTOR SOYADI";
  String doktorEpostasi = "DOKTOR E-POSTA'SI";
  String doktorAnabilimDali = "DOKTOR ANABİLİM DALI";
  List<String> uzmanlikAlanlari = ["ALAN 1", "ALAN 2", "ALAN 3"];
  String alan1 = "ALAN1";
  String alan2 = "ALAN2";
  String alan3 = "ALAN3";

  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
          height: 150,
          width: 150,
          child: Image.asset('assets/profil.png'),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              "AD:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 60),
            Text(
              doktorAdi,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              "SOYAD:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 25),
            Text(
              doktorSoyadi,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              "E-POSTA:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5),
            Text(
              doktorSoyadi,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              "ANABİLİM DALI(ABD):",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Wrap(
          children: [
            SizedBox(width: 5),
            Text(
              doktorAnabilimDali,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 30),
            Text(
              "UZMANLIL ALANLARI:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Wrap(
          children: [
            SizedBox(width: 5),
            Text(
              alan1,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(width: 5),
            Text(
              alan2,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(width: 5),
            Text(
              alan3,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(height: 20),
        RaisedButton(
          onPressed: () {},
          child: Text("PROFİLİ DÜZENLE"),
        ),
      ],
    ),
  );
}
