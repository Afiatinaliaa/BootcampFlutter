import 'dart:async';
import 'package:sanberappflutter/Latihan/Latihan-1/model/postmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Services {
  Future<List<Postmodel>?> getallposts() async {
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
          .timeout(const Duration(seconds: 10), onTimeout: () {
            throw TimeoutException('Connection time out try again');
          });

          if (response.statusCode == 200) {
            List jsonresponse = convert.jsonDecode(response.body);
            return jsonresponse.map((e) => new Postmodel.fromJson(e)).toList();
          } else {
            return null;
          }
        } on TimeoutException catch(_) {
          print("Response time out");
    }
  }
}