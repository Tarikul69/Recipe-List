import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_list_app/view/home/home.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            home(),
            home(),
            home(),
            home(),

             
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: TabBar(
            indicatorWeight: .1,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            unselectedLabelStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.deepPurple,
            tabs: [
              Tab(
                text: "Home",
                icon: FaIcon(
                  FontAwesomeIcons.house,
                ),
              ),
              Tab(
                text: "Category",
                icon: FaIcon(
                  FontAwesomeIcons.list,
                ),
              ),
              Tab(
                text: "Cart",
                icon: FaIcon(
                  FontAwesomeIcons.cartPlus,
                ),
              ),
              Tab(
                text: "Profile",
                icon: FaIcon(
                  FontAwesomeIcons.person,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}