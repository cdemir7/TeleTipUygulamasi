import 'package:flutter/material.dart';
import './doktor_giris.dart';
import './doktor_profil_ekrani.dart';

class Doktor_Ana_Ekrani extends StatefulWidget {
  const Doktor_Ana_Ekrani({Key? key}) : super(key: key);

  @override
  _Doktor_Ana_EkraniState createState() => _Doktor_Ana_EkraniState();
}

String Hasta(var ad, var y) => "$ad $y";

class _Doktor_Ana_EkraniState extends State<Doktor_Ana_Ekrani> {
  List<String> hastalar = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DOKTOR ANA EKRANI"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Doktor...... Hoşgeldiniz',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 470,
            child: ListView.builder(
              itemCount: hastalar.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: InkWell(
                      onTap: () async {},
                      child: Container(
                        child: Text('${hastalar[index]}'),
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            RaisedButton(
              highlightColor: Colors.lightBlueAccent,
              elevation: 10.0,
              child: Text(
                'Çıkış',
                style: TextStyle(fontSize: 13.5),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Doktor_Giris(),
                ),
              ),
            ),
            SizedBox(
              width: 180.0,
            ),
            RaisedButton(
              highlightColor: Colors.lightBlueAccent,
              elevation: 10.0,
              child: Text(
                'Profile Git',
                style: TextStyle(fontSize: 13.5),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DoktorProfilEkrani())),
            ),
          ]),
        ],
      ),
    );
  }
}
