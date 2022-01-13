import 'package:android/server_util/classes.dart';
import 'package:android/server_util/requests.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future doktorGirisSorgusu(String doktor_MAIL, String doktor_SIFRE) async {
    //replace your restFull API here.
    var url = "http://37.75.8.238:3000/api/doktorlar/";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<Doktor> doktorlar = [];
    for (var singleDoktor in responseData) {
      Doktor doktor = Doktor(
          doktor_SIFRE: singleDoktor["doktor_SIFRE"],
          doktor_ID: singleDoktor["doktor_ID"],
          doktor_ISIM: singleDoktor["doktor_ISIM"],
          doktor_SOYISIM: singleDoktor["doktor_SOYISIM"],
          doktor_MAIL: singleDoktor["doktor_MAIL"]
          );
      //Adding user to the list.
      doktorlar.add(doktor);
    }
  int pass = 0;
  for (var item in doktorlar) {
    if(item.doktor_MAIL == doktor_MAIL && item.doktor_SIFRE == doktor_SIFRE)
    {
      return item.doktor_MAIL + " " + item.doktor_SIFRE;
    }
  }
  return "OKUMUYOR";
}
Future<List<Mesaj>> mesajEkraniSorgusu(int doktor_ID, int hasta_ID) async {
    //replace your restFull API here.
    var url = "http://37.75.8.238:3000/api/mesajlar/";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<Mesaj> mesajlar = [];
    for (var singleMesaj in responseData) {
      Mesaj mesaj = Mesaj(
          mesaj_ID: singleMesaj['mesaj_ID'],
          doktor_ID: singleMesaj["doktor_ID"],
          hasta_ID: singleMesaj['hasta_ID'],
          mesaj: singleMesaj['mesaj'],
          eklenti_path: singleMesaj['eklenti_path'],
          mesaj_tarihi: singleMesaj['mesaj_tarihi'],
          gonderen: singleMesaj['gonderen']
          );
      //Adding user to the list.
      if(doktor_ID == mesaj.doktor_ID && hasta_ID == mesaj.hasta_ID){
        mesajlar.add(mesaj);
      }
      
    }

    return mesajlar;
}
Future<List<Abd>> abdDoktor(String abd_START) async {
    //replace your restFull API here.
    var url = "http://37.75.8.238:3000/api/doktorlar/anabilimdali";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<Abd> abdler = [];
    for (var singleAbd in responseData) {
      Abd abd = Abd(
        abd_ISIM: singleAbd['abd_isim'],
        doktor_ID: singleAbd['doktor_ID'],
        doktor_ISIM: singleAbd['doktor_ISIM'],
        doktor_SOYISIM: singleAbd['doktor_SOYISIM']);

      //Adding user to the list.
      if(abd.abd_ISIM.startsWith(abd_START)){
        abdler.add(abd);
      }
    }
    return abdler;
}
Future <int> hastaKayit(String hasta_ISIM, String hasta_SOYISIM, String hasta_MAIL, String hasta_SIFRE)async{
  List<Hasta> hastaList = await hastaGetRequest();
  for (var item in hastaList) {
    if(item.hasta_MAIL == hasta_MAIL){
      return 2;
    }
  }
  await hastaGonder( hasta_ISIM,  hasta_SOYISIM,  hasta_MAIL,  hasta_SIFRE);
  return 0;
}
Future<http.Response> hastaGonder(String hasta_ISIM, String hasta_SOYISIM, String hasta_MAIL, String hasta_SIFRE) async{
  return await http.post(
    // servere hasta verisi gondermek icin kullanilir
    // kendi basina kullanma, hastaKayit fonksiyonu ile kullan
    Uri.parse("http://37.75.8.238:3000/api/hastalar"), 
    headers: <String, String>{'Content-Type':'application/json; charset=UTF-8',
  }, body: jsonEncode(<String,dynamic>{
    'hasta_ISIM':hasta_ISIM,
    'hasta_SOYISIM':hasta_SOYISIM,
    'hasta_SIFRE':hasta_SIFRE,
    'hasta_MAIL':hasta_MAIL}));
}
Future<http.Response> mesajGonder(int doktor_ID, int hasta_ID, String mesaj, String gonderen) async{
  return await http.post(
    Uri.parse("http://37.75.8.238:3000/api/mesajlar"), 
    headers: <String, String>{'Content-Type':'application/json; charset=UTF-8',
  },body: jsonEncode(<String,dynamic>{
    'doktor_ID': doktor_ID, 
    'hasta_ID':hasta_ID,
    'mesaj':mesaj,
    'gonderen':gonderen}));
}

doktorAyarDegisim(int dokot_ID, String doktor_ISIM, String doktor_SOYISIM, String doktor_SIFRE){}

isimDoktor(String doktor_START)async{
  // isime gore doktor arar
  List<Doktor> eskiDoktorList = await doktorGetRequest();
  List<Doktor> yeniDoktorList = [];

  for (var item in eskiDoktorList) {
    if((item.doktor_ISIM+" "+item.doktor_SOYISIM).startsWith(doktor_START)){
      yeniDoktorList.add(item);
    }
  }
  return yeniDoktorList;
}

uzmanlikDoktor(String uzmanlik_START) async{
  List <Uzmanlik> eskiList = await uzmanlikGetRequest();
  List <Uzmanlik> yeniList = [];
  for (var item in eskiList) {
    if((item.uzmanlik_ISIM).startsWith(uzmanlik_START)){
      yeniList.add(item);
    }
    return yeniList;
  }
}
hastaGirisSorgusu(String hasta_MAIL, String hasta_SIFRE){}
hastaAyarDegisimi(int hasta_ID, String hasta_ISIM, String hasta_SOYISIM, String hasta_SIFRE){}






/* Future <Doktor> doktorAyarGorunumu(int doktor_ID)async{
  var url = "http://37.75.8.238:3000/api/doktorlar";
  final response = await http.get(Uri.parse(url));

  var responseData = json.decode(response.body);

  List<Doktor> doktorlar = [];
  for (var singleDoktor in responseData) {
    Doktor doktor = Doktor(
    doktor_SIFRE: singleDoktor["doktor_SIFRE"],
    doktor_ID: singleDoktor["doktor_ID"],
    doktor_ISIM: singleDoktor["doktor_ISIM"],
    doktor_SOYISIM: singleDoktor["doktor_SOYISIM"],
    doktor_MAIL: singleDoktor["doktor_MAIL"]
    );
    doktorlar.add(doktor);
  }
  for (var item in doktorlar) {
    if(item.doktor_ID == doktor_ID){
      return item;
    }
  }
  return null;
} */

hastaAyarGorunumu(int hasta_ID){}

//mesajGonder(String mesaj, int doktor_ID, int hasta_ID, String gonderen){}
essizMesajListesi(int? doktor_ID, int? hasta_ID, String kimden) async{// buglu
  
  var url = "http://37.75.8.238:3000/api/mesajlar/";
  final response = await http.get(Uri.parse(url));

  var responseData = json.decode(response.body);

    //Creating a list to store input data;
  List<Mesaj> mesajlar = [];
  
  if(kimden.toLowerCase() == 'doktor'){
    
    for (var singleMesaj in responseData) {
      Mesaj mesaj = Mesaj(
          mesaj_ID: singleMesaj['mesaj_ID'],
          doktor_ID: singleMesaj["doktor_ID"],
          hasta_ID: singleMesaj['hasta_ID'],
          mesaj: singleMesaj['mesaj'],
          eklenti_path: singleMesaj['eklenti_path'],
          mesaj_tarihi: singleMesaj['mesaj_tarihi'],
          gonderen: singleMesaj['gonderen']
          );
      //Adding user to the list.
      if(doktor_ID == mesaj.doktor_ID){
        if (essizmi(mesajlar, mesaj, kimden)) {
          mesajlar.add(mesaj);
        }
      }
      
    }
  } else if (kimden.toLowerCase() == 'hasta'){
    
    for (var singleMesaj in responseData) {
      Mesaj mesaj = Mesaj(
          mesaj_ID: singleMesaj['mesaj_ID'],
          doktor_ID: singleMesaj["doktor_ID"],
          hasta_ID: singleMesaj['hasta_ID'],
          mesaj: singleMesaj['mesaj'],
          eklenti_path: singleMesaj['eklenti_path'],
          mesaj_tarihi: singleMesaj['mesaj_tarihi'],
          gonderen: singleMesaj['gonderen']
          );
      //Adding user to the list.
      if(hasta_ID == mesaj.hasta_ID){
        if (essizmi(mesajlar, mesaj, kimden)) {
          mesajlar.add(mesaj);
        }
      }
    }
  }
  return mesajlar;
}

bool essizmi(List<Mesaj> liste, Mesaj mesaj, String kimden){
  if(kimden.toLowerCase() == 'doktor'){ // doktorun listesinde ayni hastandan varmi diye kontrol edilir
    for (var item in liste) {
      if (mesaj.hasta_ID == item.hasta_ID) {
        return false;
      }
    }
    return true;
  }
  else{ // hastanin listesinde ayni doktordan varmi diye kontrol edilir
    for (var item in liste) {
      if (mesaj.doktor_ID == item.doktor_ID) {
        return false;
      }
    }
    return true;
  }
}


