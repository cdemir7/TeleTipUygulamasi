import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sulo/classes.dart';

Future doktorEkraniSorgusu(String doktor_MAIL, String doktor_SIFRE) async {
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
Future<List<Mesaj>> mesajEkraniSorgusu(int doktor_Id, int hasta_ID) async {
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
      if(doktor_Id == mesaj.doktor_ID && hasta_ID == mesaj.hasta_ID){
        mesajlar.add(mesaj);
      }
      
    }

    return mesajlar;
}
mesajGonder(String mesaj, int doktor_ID, int hasta_ID, String gonderen){}
essizMesajListesi(int doktor_ID, int hasta_ID){}
doktorAyarGorunumu(int doktor_ID){}
doktorAyarDegisim(int dokot_ID, String doktor_ISIM, String doktor_SOYISIM, String doktor_SIFRE){}
// doktoru cagir, olan veri icindeki ile post yap
hastaEkraniSorgusu(String hasta_MAIL, String hasta_SIFRE){}
hastaKayit(String hasta_ISIM, String hasta_SOYAD, String hasta_MAIL, String hasta_SIFRE){}
isimDoktor(String doktor_ISIM){}
uzmanlikDoktor(String uzmanlik_ISIM){}
abdDoktor(String abd_ISIM){}
hastaAyarGorunumu(int hasta_ID){}
hastaAyarDegisimi(int hasta_ID, String hasta_ISIM, String hasta_SOYISIM, String hasta_SIFRE){}


