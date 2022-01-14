import 'package:deneme_1/Screens/hasta_profil_ekrani_2.dart';
import 'package:deneme_1/server_util/classes.dart';
import 'package:deneme_1/server_util/processed_requests.dart';
import 'package:flutter/material.dart';
import './doktor_giris.dart';
import './doktor_profil_ekrani.dart';
import 'package:deneme_1/server_util/requests.dart';

class Doktor_Ana_Ekrani extends StatefulWidget {
  // const Doktor_Ana_Ekrani({Key? key}) : super(key: key);
  Doktor doktor;

  Doktor_Ana_Ekrani(this.doktor);

  @override
  _Doktor_Ana_EkraniState createState() => _Doktor_Ana_EkraniState();
}

class _Doktor_Ana_EkraniState extends State<Doktor_Ana_Ekrani> {
  static int id = 0;
  static String ad = "";
  static String soyad = "";
  static String abdad = "";

  Abd abd = Abd(
    doktor_ID: id,
    doktor_ISIM: ad,
    doktor_SOYISIM: soyad,
    abd_ISIM: abdad,
  );

  doktorAyarGorunumu(int doktor_ID) async {
    List<Doktor> doktorList = await doktorGetRequest();
    List<Abd> abdList = await abdGetRequest();
    List<Uzmanlik> uzmanlikList = await uzmanlikGetRequest();
    var doktor = new Map<dynamic, dynamic>();
    var uzmanliklari = new Set();

    for (var item2 in abdList) {
      if (item2.doktor_ID == doktor_ID) {
        abdad = item2.abd_ISIM;
        id = item2.doktor_ID;
        ad = item2.doktor_ISIM;
        soyad = item2.doktor_SOYISIM;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DOKTOR ANA EKRANI"),
      ),
      body: Wrap(children: [
        Column(
          children: [
            Center(
              child: Text(
                widget.doktor.doktor_ISIM,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 400,
              child: FutureBuilder(
                future: doktorEkraniHasta(widget.doktor.doktor_ID),
                builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (ctx, index) => GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HastaProfilEkrani2()),
                        ),
                        child: ListTile(
                          title: Text(snapshot.data[index].hasta_ISIM),
                          //subtitle: Text(snapshot.data[index].hasta_SOYISIM),
                          contentPadding: EdgeInsets.only(bottom: 20.0),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              RaisedButton(
                highlightColor: Colors.lightBlueAccent,
                elevation: 10.0,
                child: Text(
                  'Çıkış',
                  style: TextStyle(fontSize: 13.5),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Doktor_Giris(),
                  ),
                ),
              ),
              SizedBox(
                width: 180.0,
              ),
              RaisedButton(
                  highlightColor: Colors.lightBlueAccent,
                  elevation: 10.0,
                  child: Text(
                    'Profile Git',
                    style: TextStyle(fontSize: 13.5),
                  ),
                  onPressed: () {
                    doktorAyarGorunumu(widget.doktor.doktor_ID);

                    print(abd.abd_ISIM);
                    print(abd.doktor_ISIM);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DoktorProfilEkrani(widget.doktor, abd)),
                    );
                  }),
            ]),
          ],
        ),
      ]),
    );
  }
}
