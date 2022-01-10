import 'package:http/http.dart' as http;

getir(var kime){

}

List liste_isle(){
  return [];
}

Future<http.Response> mesajGetir(){
  return http.get(Uri.parse('http://37.75.8.238:3000/api/doktorlar'));
}
