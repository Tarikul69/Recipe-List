import 'package:get/get.dart';
import 'package:recipe_list_app/view/splashscreen.dart';

class Approutes {
  static List<GetPage> routes() => [
    GetPage(name: "/", page: ()=> splashscreen(), transition: Transition.rightToLeft,),
  ];
}