import 'package:get/get.dart';
import 'package:recipe_list_app/view/home/home.dart';
import 'package:recipe_list_app/view/splashscreen.dart';

class Approutes {
  static List<GetPage> routes() => [
    GetPage(
      name: "/",
      page: ()=> splashscreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
     name: "/home", 
     page: ()=> home(),
     transition: Transition.rightToLeft,
     )
  ];
}