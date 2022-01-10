import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:android/server_util/util_degisgenler.dart' as degisgenler;

main(List<String> arguments) async {
  var url =Uri.parse('${degisgenler.serverIP}/api/doktorlar');
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
