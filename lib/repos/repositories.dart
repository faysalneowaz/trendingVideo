

import 'dart:convert';

import 'package:http/http.dart';
import 'package:qutectask/Model/apiresponse.dart';

class GetAllVideoDetails{

String endpoints = 'https://test-ximit.mahfil.net/api/trending-video/1?format=json&page=1';

Future<Iterable<APiResponseModel>> getDetails() async{

  Response response = await get(Uri.parse(endpoints));
  if(response.statusCode == 200){
    final List result = jsonDecode(response.body);
    return result.map((e) => APiResponseModel.fromJson(response.body as Map<String, dynamic>));
  }else{
    throw Exception(response.reasonPhrase);
  }
}

}