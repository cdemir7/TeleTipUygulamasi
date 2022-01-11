import 'package:flutter/material.dart';
import 'Screens/giris_ekrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TELE-TIP UYGULAMASI"),
        ),
        body: AnaGirisEkrani(),
      ),
    );
  }
}
