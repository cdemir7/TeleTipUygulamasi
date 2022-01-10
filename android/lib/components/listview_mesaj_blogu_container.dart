import 'package:flutter/material.dart';

class ListviewMesajBloguContainer extends StatelessWidget{
  
  final Widget alt_widget; // tasarlanmis olan mesaj widgeti
  final bool gelen; // mesajin kimden geldigi, 0 doktor, 1 hasta kabul edilir
  final bool kime;   
  // kime geldigi ( ornegin, doktora hem kendinin yazdigi hem de hastanin yazdigi mesajlar geliyor)
  // 0 ise doktor, 1 ise hasta kabul edilir

  const ListviewMesajBloguContainer({
    Key? key,
    required this.alt_widget,
    required this.gelen,
    required this.kime
  }) :super(key:key);

  @override
  Widget build(BuildContext context){
  Size size = MediaQuery.of(context).size;
  if (kime == gelen) { // bu durumda containerin icine koyulcak mesaji kisinin kendisinin oldugu ogrnilir
    return Container(
      child: Row(
        children: [
          Expanded(child: Container()),
          alt_widget,
        ],),
    );
  }
  else{// bu durumda mesajin karsi taraftan geldigi ogrenilir
    return Container(
      child: Row(children: [alt_widget,Expanded(child: Container())],),
    );
  }
  }
  
}