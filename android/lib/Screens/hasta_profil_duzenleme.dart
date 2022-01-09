import 'package:flutter/material.dart';

class HastaProfilDuzenleme extends StatefulWidget {
  const HastaProfilDuzenleme({Key? key}) : super(key: key);

  @override
  _HastaProfilDuzenlemeState createState() => _HastaProfilDuzenlemeState();
}

class _HastaProfilDuzenlemeState extends State<HastaProfilDuzenleme> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          Image.asset('assets/profil.png'),
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
                hintText: 'Mevcut Emailinizi Giriniz...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Yeni Emailinizi Giriniz...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mevcut Şifrenizi Giriniz...',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Yeni Şifrenizi Giriniz...',
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
        alignment: Alignment.center,
      ),
    );
  }
}
