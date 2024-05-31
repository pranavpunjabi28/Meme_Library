import 'dart:convert';

import 'package:flutter_application_2/model.dart';
import 'package:http/http.dart' as http;

class Api {
  String baseurl = "https://api.imgflip.com/get_memes";
  Future<MemeModel> getdata() async {
    final http.Response rawdata = await http.get(Uri.parse(baseurl));
    if (rawdata.statusCode != 200) {
      return throw Exception("failed");
    } else {
      final dynamic decodedata = jsonDecode(rawdata.body);
      MemeModel obj = MemeModel.fromJson(decodedata);
      return obj;
    }
  }
}
