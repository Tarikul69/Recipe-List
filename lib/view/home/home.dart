import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_list_app/view/widget/navbar.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List"),
      ),
      body: Container(),
      bottomNavigationBar: const navbar(),
    );
  }
}
