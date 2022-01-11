import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:android/server_util/util_degisgenler.dart' as degisgenler;


// Serverdan veri cekicek fonksiyonlar awaiti ekle
mesajlar_getir() async{
  // Serverden Mesaj Listesini Ceker
  // Kullanimi: var list = async mesajlar_getir();

  var url =Uri.parse(degisgenler.serverIP+degisgenler.mesajEklenti);
  var mesajlarListesi= [];
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      mesajlarListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return mesajlarListesi;
}
doktorlar_getir() async{
  // Serverden Doktor Listesini Ceker
  // Kullanimi: var list = async doktorlar_getir();

  var url =Uri.parse(degisgenler.serverIP+degisgenler.doktorEklenti);
  var doktorListesi= [];
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      doktorListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return doktorListesi;
}
hasta_getir() async{
  
  // Serverden Hasta Listesini Çeker
  // Kullanimi: var list = async hasta_getir();

  var url =Uri.parse(degisgenler.serverIP+degisgenler.hastaEklenti);
  var hastaListesi= [];
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      hastaListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return hastaListesi;
}
abd_view_getir() async{
  var url =Uri.parse('${degisgenler.serverIP}${degisgenler.abdViewEklenti}');
  var abdViewListesi= [];
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      abdViewListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return abdViewListesi;
}

uzmanlik_View_getir() async{
  var url =Uri.parse('${degisgenler.serverIP}${degisgenler.uzmanlikViewEklenti}');
  var uzmanlikViewListesi= [];
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      uzmanlikViewListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return uzmanlikViewListesi;
}

mesaj_ekle(String doktor_ID, String hasta_ID, String mesaj, String gonderen) async{
  // ilk once hasta mailinin hasta listesinde olup olmadigini kontrol eder
  // yok ise hastayi kaydeder
  // hasta maili onceden kullanilmissa 1 doner
  // hasta basarili kaydedildiyse 0 doner

  var mesajList= await mesajlar_getir();
  
  var url = Uri.parse(degisgenler.serverIP+degisgenler.mesajEklenti);
  http.post(
    url,
    headers: <String,String>{'Content-Type': 'application/json; charset=UTF-8'},
    body: convert.jsonEncode(<String,String>{
      'doktor_ID': doktor_ID,
      'hasta_ID':hasta_ID,
      'mesaj':mesaj,
      'gonderen': gonderen
      }),);
  return 0;
} // gonder butonuna mapla, hatta gerekirse input alanini sil bunla

hasta_ekle(String hasta_ISIM,String hasta_SOYISIM,String hasta_SIFRE,String hasta_MAIL) async {
  // ilk once hasta mailinin hasta listesinde olup olmadigini kontrol eder
  // yok ise hastayi kaydeder
  // hasta maili onceden kullanilmissa 1 doner
  // hasta basarili kaydedildiyse 0 doner

  var hastaList= await hasta_getir();
  for (var item in hastaList) {
    if (item['hasta_MAIL'] == hasta_MAIL) {
      return 1; // ayni mail durumu 
    }
  }
  var url = Uri.parse(degisgenler.serverIP+degisgenler.hastaEklenti);
  http.post(
    url,
    headers: <String,String>{'Content-Type': 'application/json; charset=UTF-8'},
    body: convert.jsonEncode(<String,String>{
      'hasta_ISIM': hasta_ISIM,
      'hasta_SOYISIM':hasta_SOYISIM,
      'hasta_SIFRE':hasta_SIFRE,
      'hasta_MAIL':hasta_MAIL
      }),);
  return 0;
}


doktor_ayar_gorunumu_getir(var doktorId){
  // burada uzmanlik listesi kullanilarak ve gerekli doktor satiri cekilerek 
  // bir dictinionary yapisi ydonulecek
}


ada_gore_getir(var adSoyad){
  var liste = doktorlar_getir();
  var yeniListe =[];
  for (var item in liste) {
    if (adSoyad == ""+item["doktor_ISIM"]+" "+item["doktor_SOYISIM"]) {
      yeniListe.add(item);
    }
  }
  return yeniListe;
}
// Post methodlari

giris_sorgula(String mail, String sifre){
  var doktorListe = doktorlar_getir();
  var hastaListe = hasta_getir();

  int i;

  for (var item in doktorListe) {
    if(item['doktor_MAIL'] == mail && item['doktor_SIFRE'] == sifre){
      return [0, item];
    }
  }
  for (var item2 in hastaListe) {
    if(item2['hasta_MAIL'] == mail && item2['hasta_SIFRE'] == sifre){
      return [1, item2];
    }
  }
  return [-1, -1];
}


giris_ekrani_row(var doktorId, var hastaId, var clientTipi){
// giris ekrani rowlari icin kaynak saglanir
}



abd_view_sorgula(String girdi){
  var abd_view = abd_view_getir();

  var gonderilcek_liste = [];

  for (var item in abd_view) {
    if (((item['abd_isim']).toLowerCase()).startsWith(girdi.toLowerCase())){
      gonderilcek_liste.add(item);
    }
  }
  return abd_view;
}

uzmanlik_View_sorgula(String girdi){
  var uzmanlik_view = uzmanlik_View_getir();

  var gonderilcek_liste = [];

  for (var item in uzmanlik_view) {
    if (((item['uzmanlik_isim']).toLowerCase()).startsWith(girdi.toLowerCase())){
      gonderilcek_liste.add(item);
    }
  }
  return uzmanlik_view;
}


mesajlar_ayir(var doktorId, var hastaId, var gonderen){
  var anaMesajListesi = mesajlar_getir();
  var mesajListesi =[];

  for (var item in anaMesajListesi) {
    if(item['doktor_ID'] == doktorId && item['hasta_ID'] == hastaId){
      mesajListesi.add(item);
    }
  }
  return mesajListesi;
}
doktor_degisiklikleri_uygula(String doktor_ID, String doktor_ISMI, String doktor_SOYISIM, ){}
hasta_degisiklik_uygula(){}