import 'package:flutter/material.dart';
import 'package:android/global_degisgenler.dart';

class YaziAlaniContaineri extends StatelessWidget {
  final Widget alt_widget;
  
  const YaziAlaniContaineri({
    Key? key, 
    required this.alt_widget
    }) :super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(color: acik_ana_renk, borderRadius: BorderRadius.circular(29)),
      child: alt_widget,
    );
  }
  
}