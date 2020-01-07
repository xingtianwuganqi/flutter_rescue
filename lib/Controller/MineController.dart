import 'package:flutter/material.dart';

class MineController extends StatefulWidget {
  @override
  MineStates createState() {
    return new MineStates();
  }
}

class MineStates extends State<MineController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        title: Text("我的"),
      ),
//      body: ,
    );
  }
}