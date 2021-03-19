import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
     //   drawer: ,
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(
            tabs: [
              Tab(text:"Chats"),
              Tab(text:"Notes"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(),
            ListView(),
          ],
        ),
      ),
    );
  }
}