import 'package:flutter/material.dart';

class CommunityController extends StatefulWidget {
  @override
  CommunityStates createState() {
    return new CommunityStates();
  }
}

class CommunityStates extends State<CommunityController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        title: Text("社区"),
      ),
//      body: ,
    );
  }
}