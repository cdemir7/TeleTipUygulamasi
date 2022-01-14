

import 'package:android/server_util/classes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<List<Doktor>> doktorGetRequest() async {
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
    return doktorlar;
  }
  Future<List<Abd>> abdGetRequest() async {
    var url = "http://37.75.8.238:3000/api/doktorlar/anabilimdali";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    List<Abd> abdler = [];
    for (var singleAbd in responseData) {
      Abd abd = Abd(
        abd_ISIM: singleAbd['abd_isim'],
        doktor_ID: singleAbd['doktor_ID'],
        doktor_ISIM: singleAbd['doktor_ISIM'],
        doktor_SOYISIM: singleAbd['doktor_SOYISIM']);

      abdler.add(abd);
    }
    return abdler;
  }
  Future<List<Hasta>> hastaGetRequest() async {
    var url = "http://37.75.8.238:3000/api/hastalar";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    List<Hasta> hastalar = [];
    for (var singleHasta in responseData) {
      Hasta hasta = Hasta(
          hasta_SIFRE: singleHasta["hasta_SIFRE"],
          hasta_ID: singleHasta["hasta_ID"],
          hasta_ISIM: singleHasta["hasta_ISIM"],
          hasta_SOYISIM: singleHasta["hasta_SOYISIM"],
          hasta_MAIL: singleHasta["hasta_MAIL"]
          );
      hastalar.add(hasta);
    }
    return hastalar;
  }
  Future<List<Uzmanlik>> uzmanlikGetRequest() async {

    var url = "http://37.75.8.238:3000/api/doktorlar/uzmanlik";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    List<Uzmanlik> uzmanliklar = [];
    for (var singleUzman in responseData) {
      Uzmanlik uzman = Uzmanlik(
          doktor_ID: singleUzman['doktor_ID'],
          doktor_ISIM: singleUzman['doktor_ISIM'],
          doktor_SOYISIM: singleUzman['doktor_SOYISIM'],
          uzmanlik_ISIM: singleUzman['uzmanlik_isim']
          );
      uzmanliklar.add(uzman);
    }
    return uzmanliklar;
  }
  Future<List<Mesaj>> mesajGetRequest() async {
    var url = "http://37.75.8.238:3000/api/mesajlar";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    List<Mesaj> mesajlar = [];
    for (var singleMesaj in responseData) {
      Mesaj mesaj = Mesaj(
          mesaj_ID: singleMesaj['mesaj_ID'],
          doktor_ID: singleMesaj["doktor_ID"],
          hasta_ID: singleMesaj['hasta_ID'],
          mesaj: singleMesaj['mesaj'],
          mesaj_tarihi: singleMesaj['mesaj_tarihi'],
          gonderen: singleMesaj['gonderen']

          );
      mesajlar.add(mesaj);
    }
    return mesajlar;
  }