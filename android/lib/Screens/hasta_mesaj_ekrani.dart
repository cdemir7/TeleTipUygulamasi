import 'package:flutter/material.dart';

void main() => runApp(Hasta_Mesaj_Ekrani());

class Hasta_Mesaj_Ekrani extends StatefulWidget {
  const Hasta_Mesaj_Ekrani({Key? key}) : super(key: key);

  @override
  _Hasta_Mesaj_EkraniState createState() => _Hasta_Mesaj_EkraniState();
}

String Hasta(var ad, var y) => "$ad $y";

class _Hasta_Mesaj_EkraniState extends State<Hasta_Mesaj_Ekrani> {
  @override
  List<String> konusmalarim = [
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
    return Scaffold(
      body: Wrap(
        children: [
          Column(
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
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: InkWell(
                          onTap: () async {},
                          child: Container(
                            child: Text(
                              '${konusmalarim[index]}',
                              style: TextStyle(color: Colors.black),
                            ),
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
