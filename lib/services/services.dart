import 'dart:async';
import 'dart:convert';
import 'package:dummy_getx/model/postmodel.dart';
//import 'dart:convert' as convert;

import 'package:get/get.dart';

class Services extends GetConnect{
  final baseUrl = "https://jsonplaceholder.typicode.com/users/1/";

  Future<List<PostModelDart>> getallpost() async {
    var response = await get("posts")
        .timeout(const Duration(seconds: 10), onTimeout: () {
      throw TimeoutException("connection faile please try again");
    });

    try {} on TimeoutException catch (_) {
      print("response time out");
    }
    if (response.statusCode == 200) {

      var data = response.body;
      var result = jsonEncode(data);
     // List jsonresponse = convert.jsonDecode(response.body);
      // to json String to model
     // return jsonresponse.map((e) => new PostModelDart.fromJson(e)).toList();
      return postModelDartFromJson(result.toString());

    } else {
      return null;
    }
  }
}
