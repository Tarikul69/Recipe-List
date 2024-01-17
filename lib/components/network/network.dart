import 'dart:convert';
import 'package:recipe_list_app/model/mymodel.dart';

import 'package:http/http.dart' as http;

class network {
  
 static Future<dynamic> getNetwork() async{
  var url = Uri.https('yummly2.p.rapidapi.com', '/feeds/list', 
  {"limit": "18","start": "0","tag":"list.recipe.populer"},
  );

var response = await http.get(url, headers: {
  "X-RapidAPI-Key": "433fc604admshf6b305250ed0f37p144bafjsn0a06b61704d3",
    "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
    });
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body); 
    final model = mymodel.fromJson(data);
  }else{

  }
  
}
}

 