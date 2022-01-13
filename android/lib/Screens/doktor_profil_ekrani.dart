import 'package:deneme_1/server_util/classes.dart';
import 'package:flutter/material.dart';
import 'package:deneme_1/Screens/doktor_profil_edit.dart';

class DoktorProfilEkrani extends StatefulWidget {
  Doktor doktor;
  DoktorProfilEkrani(this.doktor);

  @override
  _DoktorProfilEkraniState createState() => _DoktorProfilEkraniState();
}

class _DoktorProfilEkraniState extends State<DoktorProfilEkrani> {
  String doktorAdi = "DOKTOR ADI";
  String doktorSoyadi = "DOKTOR SOYADI";
  String doktorEpostasi = "DOKTOR E-POSTA'SI";
  String doktorAnabilimDali = "DOKTOR ANABİLİM DALI";
  List<String> uzmanlikAlanlari = [
    "ALAN 1",
    "ALAN 2",
    "ALAN 3",
    "ALAN 4",
    "ALAN 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DOKTOR PROFİL EKRANI")),
      body: Center(
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
                  widget.doktor.doktor_ISIM,
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
                  widget.doktor.doktor_SOYISIM,
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
                  widget.doktor.doktor_MAIL,
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
                  "doktorun abdleri çekilmemiş",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "UZMANLIK ALANLARI:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Wrap(
              children: [
                Container(
                  height: 140,
                  child: Scrollbar(
                    child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      itemCount: uzmanlikAlanlari.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                          uzmanlikAlanlari[index],
                          style: TextStyle(fontSize: 18, height: 1.3),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("PROFİLİ DÜZENLE"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DoktorProfilEdit(widget.doktor))),
            ),
          ],
        ),
      ),
    );
  }
}
