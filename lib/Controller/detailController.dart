import 'package:flutter/material.dart';

class detailController extends StatefulWidget {
  @override
  detailStates createState() {
    return new detailStates();
  }
}

class detailStates extends State<detailController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        title: Text("明细"),
      ),
//      body: ,
    );
  }
}