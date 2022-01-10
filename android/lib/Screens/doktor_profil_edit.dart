import 'package:flutter/material.dart';


class DoktorProfilEdit extends StatefulWidget {
  DoktorProfilEdit({Key? key}) : super(key: key);

  @override
  _DoktorProfilEditState createState() => _DoktorProfilEditState();
}

class _DoktorProfilEditState extends State<DoktorProfilEdit> {
  String doktorAdi = "DOKTOR ADI";
  String doktorSoyadi = "DOKTOR SOYADI";
  String doktorEpostasi = "DOKTOR E-POSTA'SI";
  String doktorAnabilimDali = "DOKTOR ANABİLİM DALI";
  List<String> uzmanlikAlanlari = ["ALAN 1", "ALAN 2", "ALAN 3"];
  List<bool> dene = [false, false, false];

  String alan1 = "ALAN1";
  String alan2 = "ALAN2";
  String alan3 = "ALAN3";
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: doktorEpostasi,
              ),
            ),
            SizedBox(height: 10),
            Row(
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
              child: Scrollbar(
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
              ),
            ),
            Wrap(
              children: [
                SizedBox(width: 5),
                RaisedButton(
                  onPressed: () {},
                  child: Text("KAYDET"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
