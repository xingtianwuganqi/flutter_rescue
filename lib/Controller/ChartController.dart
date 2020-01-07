import 'package:flutter/material.dart';

class ChartController extends StatefulWidget {
  @override
  ChartStates createState() {
    return new ChartStates();
  }
}

class ChartStates extends State<ChartController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        title: Text("图表"),
      ),
//      body: ,
    );
  }
}