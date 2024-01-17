import 'package:flutter/material.dart';

class bookmark extends StatelessWidget {
  const bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,  
        title: Text("Bookmark"),
        ),
    );
  }
}