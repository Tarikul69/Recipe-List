import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_list_app/view/home/home.dart';
import 'package:recipe_list_app/view/home/search.dart';
import 'package:recipe_list_app/view/home/bookmark.dart';
import 'package:recipe_list_app/view/home/profile.dart';

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
            search(),
            bookmark(),
            profile(),

             
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
                 icon: FaIcon(
                  FontAwesomeIcons.house,
                ),
              ),
              Tab(
                 icon: FaIcon(
                  FontAwesomeIcons.searchengin,
                ),
              ),
              Tab(
                 icon: FaIcon(
                  FontAwesomeIcons.list,
                ),
              ),
              Tab(
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