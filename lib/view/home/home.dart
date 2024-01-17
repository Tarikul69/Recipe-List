import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_list_app/components/network/network.dart';
import 'package:recipe_list_app/model/mymodel.dart';
import 'package:recipe_list_app/view/widget/navbar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

late List<mymodel> _mymodel1;
bool _isLoading = true;

@override
void initState() {
    // TODO: implement initState
    super.initState();
    getNetwork();
  }

Future<void> getNetwork() async{
  _mymodel1 = (await network.getNetwork()).cast<mymodel>();
  setState(() {
    _isLoading = false;
  });
  print(_mymodel1);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List"),
      ),
      body: Container(),
    );
  }
}
