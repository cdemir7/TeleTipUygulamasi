import 'package:flutter/material.dart';
import 'package:android/server_util/mesaj_listesi_getir.dart';

class ChatEkrani extends StatelessWidget{
  final String isim;
   // mesajin kimden geldigi, 0 doktor, 1 hasta kabul edilir
  final bool kime;   
  // kime geldigi ( ornegin, doktora hem kendinin yazdigi hem de hastanin yazdigi mesajlar geliyor)
  // 0 ise doktor, 1 ise hasta kabul edilir

  const ChatEkrani({
    Key? key,
    required this.isim,
    required this.kime
  }) :super(key:key);

  @override
  Widget build(BuildContext context){
    bool gelen = true;

    var mesajlistesi = mesaj_listesi_getir.getir(kime); // burada serverdan gelen liste kaydedilecek
    
    return Row(children: [Container(),Container(child: ListView(children: [],),),Container()],);
  }
  
}