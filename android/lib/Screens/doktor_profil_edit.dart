import 'package:android/Screens/doktor_profil_ekrani.dart';
import 'package:flutter/material.dart';

class DoktorProfilEdit extends StatefulWidget {
  DoktorProfilEdit({Key? key}) : super(key: key);

  @override
  _DoktorProfilEditState createState() => _DoktorProfilEditState();
}

class _DoktorProfilEditState extends State<DoktorProfilEdit> {
  String doktorAdi = "DOKTOR ADI";
  String doktorSoyadi = "DOKTOR SOYADI";

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
                //controller: t1,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: doktorAdi,
                ),
              ),
              TextField(
                //controller: t1,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: doktorSoyadi,
                ),
              ),
              TextField(
                //controller: t1,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "YENİ ŞİFRE",
                ),
              ),
              TextField(
                //controller: t1,
                cursorColor: Colors.black,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "YENİ ŞİFRE TEKRAR",
                ),
              ),
              /*Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "UZMANLIK ALANLARI:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
               Container(
                height: 200,
                child: ListView.builder(
                  itemCount: uzmanlikAlanlari.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      title: Text(uzmanlikAlanlari[index]),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: dene[index],
                      onChanged: (bool? value) {
                        setState(() {
                          dene[index] = value!;
                        });
                      },
                    );
                  },
                ),
              ), */
              Wrap(
                children: [
                  SizedBox(width: 5),
                  RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoktorProfilEkrani())),
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
