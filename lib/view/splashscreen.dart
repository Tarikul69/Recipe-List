import 'package:flutter/material.dart';
import 'package:recipe_list_app/view/home/home.dart';
import 'package:recipe_list_app/view/widget/navbar.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoscreen();
  }

  _navigatetoscreen() async {
    //Get.pu

    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => navbar(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        child: Center(
          child: const Text(
            'Recipe List',
            style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold, 
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}