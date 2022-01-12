import 'package:flutter/material.dart';

class HastaProfilDuzenleme extends StatefulWidget {
  const HastaProfilDuzenleme({Key? key}) : super(key: key);

  @override
  _HastaProfilDuzenlemeState createState() => _HastaProfilDuzenlemeState();
}

class _HastaProfilDuzenlemeState extends State<HastaProfilDuzenleme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HASTA PROFİL DÜZENLEME EKRANI"),
      ),
      body: Center(
        child: Wrap(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/profil.png'),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("Fotoğrafı Değiştir"),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'AD',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'SOYAD',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'YENİ ŞİFRE',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'YENİ ŞİFRE TEKRAR',
                ),
              ),
            ),
            RaisedButton(
              child: Text("Güncelle"),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              onPressed: () {},
            ),
          ],
          alignment: WrapAlignment.center,
        ),
      ),
    );
  }
}
