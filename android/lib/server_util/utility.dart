import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:android/server_util/util_degisgenler.dart' as degisgenler;


giris_ekrani_row(var doktorId, var hastaId, var clientTipi){
// giris ekrani rowlari icin kaynak saglanir
}

doktor_ayar_gorunumu_getir(var doktorId){
  // burada uzmanlik listesi kullanilarak ve gerekli doktor satiri cekilerek 
  // bir dictinionary yapisi ydonulecek
}
doktor_degisiklikleri_uygula(){}
doktorlar_getir() async{
  var url =Uri.parse('${degisgenler.serverIP}${degisgenler.doktorEklenti}');
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

mesaj_ekle(){} // gonder butonuna mapla, hatta gerekirse input alanini sil bunla
giris_sorgula(){}


abd_getir() async {
  var url =Uri.parse('${degisgenler.serverIP}${degisgenler.abdEklenti}');
  var abdListesi= [];
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      abdListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return abdListesi;
}
abd_ekle(){}
abd_id_sorgula(var id){
  var abdListe = abd_getir();

  for (var item in abdListe) {
    if(id == item['abd_Id']){
      return item;
    }
  }
}
abd_isim_sorgula(var isim){
  var abdListe = abd_getir();

  for (var item in abdListe) {
    if(isim == item['abd_ISIM']){
      return item;
    }
  }
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
abd_view_ekle(){}
abd_view_sorgula(){}

uzmanlik_getir() async {
  var url =Uri.parse('${degisgenler.serverIP}${degisgenler.uzmanlikEklenti}');
  var uzmanlikListesi= [];
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    final length = convert.jsonDecode(response.body).length;
    for (var i = 0; i <= length -1; i++) {
      uzmanlikListesi.add(convert.jsonDecode(response.body)[i] as Map<String, dynamic>);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  return uzmanlikListesi;
}
uzmanlik_ekle(){}
uzmanlik_sorgula(){}

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
uzmanlik_View_ekle(){}
uzmanlik_View_sorgula(){}

hasta_getir(){}
hasta_ekle(){}
hasta_sorgula(){}



mesajlar_getir() async{
  var url =Uri.parse('${degisgenler.serverIP}/api/mesajlar'); // burayi gerekirse editle
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
mesajlar_ayir(var doktorId, var hastaId){
  var anaMesajListesi = mesajlar_getir();
}
mesajlar_sirala(var doktorId, var hastaId, var clientTipi){
// mesaj ekrani icin gerekli liste olusturulur, bu liste balonlarin sag ve sola gore 
// siralanmasi icin gerekli yapiyi saglar
}
