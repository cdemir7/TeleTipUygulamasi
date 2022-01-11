import 'package:flutter/material.dart';

class Hasta_Ana_Ekrani extends StatefulWidget {
  const Hasta_Ana_Ekrani({Key? key}) : super(key: key);

  @override
  _Hasta_Ana_EkraniState createState() => _Hasta_Ana_EkraniState();
}

String Doktor(var ad, var y) => "$ad $y";

class _Hasta_Ana_EkraniState extends State<Hasta_Ana_Ekrani> {
  List<String> doktorlar = [
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
    Doktor('ada', 5),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.person_rounded),
                iconSize: 40.0,
                highlightColor: Colors.lightBlueAccent,
                onPressed: () {
                  setState(
                    () {},
                  );
                },
              ),
              SizedBox(
                width: 60,
              ),
              Text('Hoşgeldiniz...'),
              SizedBox(
                width: 60,
              ),
              RaisedButton(
                highlightColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 1),
                elevation: 10.0,
                child: Text(
                  'Mesaj Kutusu',
                  style: TextStyle(fontSize: 13.5),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          child: Row(
            children: [
              RaisedButton(
                highlightColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 1),
                elevation: 10.0,
                child: Text(
                  'Ada Göre',
                  style: TextStyle(fontSize: 13.5),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              RaisedButton(
                highlightColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 1),
                elevation: 10.0,
                child: Text(
                  'Uzmanlığa Göre',
                  style: TextStyle(fontSize: 13.5),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 40,
              ),
              RaisedButton(
                highlightColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 1),
                elevation: 10.0,
                child: Text(
                  "ABD'ye Göre",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        RaisedButton(
          highlightColor: Colors.lightBlueAccent,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          elevation: 10.0,
          child: Text(
            'LİSTELE',
            style: TextStyle(fontSize: 13.5),
          ),
          onPressed: () {},
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            height: 320,
            child: ListView.builder(
              itemCount: doktorlar.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Text('${doktorlar[index]}'),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          highlightColor: Colors.lightBlueAccent,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          elevation: 10.0,
          child: Text(
            'Çıkış',
            style: TextStyle(fontSize: 13.5),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
