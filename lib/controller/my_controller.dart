import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class Mycontroller extends GetCupertinoApp
{
  void network() async{
  var url = Uri.https('https://yummly2.p.rapidapi.com', '/feeds/search');

var response = await http.get(url);
  if (response.statusCode == 200) {
    
  }else{
    
  }
  
}
}