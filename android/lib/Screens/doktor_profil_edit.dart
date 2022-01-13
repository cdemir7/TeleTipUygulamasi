import 'package:deneme_1/Screens/doktor_profil_ekrani.dart';
import 'package:deneme_1/server_util/classes.dart';
import 'package:flutter/material.dart';

class DoktorProfilEdit extends StatefulWidget {
  Doktor doktor;

  DoktorProfilEdit(this.doktor);

  @override
  _DoktorProfilEditState createState() => _DoktorProfilEditState();
}

class _DoktorProfilEditState extends State<DoktorProfilEdit> {
  String doktorAdi = "AD";
  String doktorSoyadi = "SOYAD";
  final adController = TextEditingController();
  final soyadController = TextEditingController();
  final sifreController = TextEditingController();

  List<bool> dene = [false, false, false, false, false];
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DOKTOR PROFİL DÜZENLEME")),
      body: Wrap(
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/profil.png'),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {},
                child: Text("FOTOĞRAFI DEĞİŞTİR"),
              ),
              SizedBox(height: 10),
              TextField(
                controller: adController,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: doktorAdi,
                ),
              ),
              TextField(
                controller: soyadController,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: doktorSoyadi,
                ),
              ),
              TextField(
                controller: sifreController,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "YENİ ŞİFRE",
                ),
              ),
              Wrap(
                children: [
                  SizedBox(width: 5),
                  RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DoktorProfilEkrani(widget.doktor))),
                    child: Text("KAYDET"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
