import 'package:flutter/material.dart';
import 'package:recipe_list_app/components/network/network.dart';
import 'package:recipe_list_app/model/mymodel.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<Mymodel>? mymodel;
  var isLoaded = false;
  @override
  void initState() {
     super.initState();
     getData();
  }

  getData() async{
    mymodel = await network().getPost();
    if (mymodel != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List"),
      ),
    body: ListView.builder(
     itemCount: mymodel?.length,
     itemBuilder: ((context, index){
      return SizedBox(
        child: Text("Hi.."),
      );
    }),),
    );
  }
}