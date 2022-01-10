import 'package:flutter/material.dart';

class Doktor_Ana_Ekrani extends StatefulWidget {
  const Doktor_Ana_Ekrani({Key? key}) : super(key: key);

  @override
  _Doktor_Ana_EkraniState createState() => _Doktor_Ana_EkraniState();
}

class Doktor_Ana_Ekrani extends StatefulWidget {
  const Doktor_Ana_Ekrani({Key? key}) : super(key: key);

  @override
  _Doktor_Ana_EkraniState createState() => _Doktor_Ana_EkraniState();
}

class Hasta {
  String ad = 'afd';
  String sikayet = 'dscsad';

  Hasta(String ad, String sikayet) {
    this.ad = ad;
    this.sikayet = sikayet;
  }
  String toString() {
    return '$Hasta{ad: $ad, şikayet: $sikayet}';
  }
}

class _Doktor_Ana_EkraniState extends State<Doktor_Ana_Ekrani> {
  List<Hasta> hastalar = [
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
    return MaterialApp(
      home: Scaffold(
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
              color: Colors.greenAccent,
              child: ListView.builder(
                itemCount: hastalar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Text('${hastalar[index]}'),
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
                onPressed: () {},
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
                onPressed: () {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
