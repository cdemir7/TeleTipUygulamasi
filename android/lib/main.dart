import 'package:flutter/material.dart';
import 'package:tele_tip/screens/giris_ekrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tele Tip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColorLight: Colors.lightBlueAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Giris_Ekrani(),
    );
  }
}
