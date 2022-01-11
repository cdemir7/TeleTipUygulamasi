import 'package:android/Screens/hasta_ana_ekrani.dart';
import 'package:flutter/material.dart';

class HastaKayitEkrani extends StatefulWidget {
  const HastaKayitEkrani({Key? key}) : super(key: key);

  @override
  _HastaKayitEkraniState createState() => _HastaKayitEkraniState();
}

class _HastaKayitEkraniState extends State<HastaKayitEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HASTA KAYIT EKRANI"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'AD',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SOYAD',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-POSTA',
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ŞİFRE',
              ),
            ),
            RaisedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Hasta_Ana_Ekrani())),
              child: Text("KAYIT OL"),
            )
          ],
        ),
      ),
    );
  }
}
