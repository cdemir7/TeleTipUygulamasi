import 'package:flutter/material.dart';

class Hasta_Mesaj_Ekrani extends StatefulWidget {
  const Hasta_Mesaj_Ekrani({Key? key}) : super(key: key);

  @override
  _Hasta_Mesaj_EkraniState createState() => _Hasta_Mesaj_EkraniState();
}

class Hasta {
  String ad = 'afd';
  String sikayet = 'dscsad';

  Hasta(String ad, String sikayet) {
    this.ad = ad;
    this.sikayet = sikayet;
  }
  String toString() {
    return '${Hasta} {ad: $ad, sikayet: $sikayet}';
  }
}

class _Hasta_Mesaj_EkraniState extends State<Hasta_Mesaj_Ekrani> {
  @override
  List<Hasta> konusmalarim = [
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
    Hasta('scc', 'csa'),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Konuşmalarım',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 670,
          child: ListView.builder(
            itemCount: konusmalarim.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.lightBlueAccent,
                child: Text(
                  '${konusmalarim[index]}',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
