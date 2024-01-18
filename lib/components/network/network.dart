import 'dart:convert';
import 'dart:html';
import 'package:recipe_list_app/model/mymodel.dart';

import 'package:http/http.dart' as http;

class network {

  Future<List<Mymodel>?> getPost() async{
    var client = http.Client();

    var uri = Uri.parse('yummly2.p.rapidapi.com/feeds/list');
    var response = await client.get(uri);
    if (response.statusCode == 200){
      var json = response.body;
      return mymodelFromJson(json);
    }

  }
  
  ///////////////
 
}

 