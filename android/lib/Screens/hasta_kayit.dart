import 'package:flutter/material.dart';
Widget MyBody() {
  return Container(
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
          onPressed: () {},
          child: Text("KAYIT OL"),
        )
      ],
    ),
  );
}
