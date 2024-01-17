import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,  
        title: Text("Search", style: TextStyle(fontWeight: FontWeight.bold,),),
        ),
    );
  }
}