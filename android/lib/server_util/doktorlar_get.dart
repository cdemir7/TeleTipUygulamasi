import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:android/server_util/util_degisgenler.dart' as degiskenler;

ada_gore_getir(var ad_soyad){
  var liste = doktorlar_getir();
  var yeniListe =[];
  for (var item in liste) {
    if (ad_soyad == ""+item["doktor_ISIM"]+" "+item["doktor_SOYISIM"]) {
      yeniListe.add(item);
    }
  }
  return yeniListe;
}
doktorlar_getir() async{
  var url =Uri.parse('${degiskenler.serverIP}/api/doktorlar');
  var doktorListesi= [];
  // Await the http get response, then decode the json-formatted response.
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
mesajlar_getir() async{
  var url =Uri.parse('${degiskenler.serverIP}/api/mesajlar'); // burayi gerekirse editle
  var mesajlarListesi= [];
  // Await the http get response, then decode the json-formatted response.
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
mesajlar_ayir(var doktor_id, var hasta_id){
  var anaMesajListesi = mesajlar_getir();
}
giris_ekrani_row(var doktor_id, var hasta_id, var client_tipi){
// giris ekrani rowlari icin kaynak saglanir
}
mesajlar_sirala(var doktor_id, var hasta_id, var client_tipi){
// mesaj ekrani icin gerekli liste olusturulur, bu liste balonlarin sag ve sola gore 
// siralanmasi icin gerekli yapiyi saglar
}
