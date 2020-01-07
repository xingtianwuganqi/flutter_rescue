import 'package:flutter/material.dart';

class AddController extends StatefulWidget {
  @override
  AddStates createState() {
    return new AddStates();
  }
}

class AddStates extends State<AddController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        title: Text("记账"),
      ),
//      body: ,
    );
  }
}