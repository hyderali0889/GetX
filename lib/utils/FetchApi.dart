import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Fetch {
  
  fetchData() async {
    var client = http.Client();
    try {
      var res =
          await client.get(Uri.parse("https://fakestoreapi.com/products"));
      if (res.statusCode == 200) {
        
        return res.body;
      }
    } catch (e) {
      debugPrint("error Found");
    }
  }
}
