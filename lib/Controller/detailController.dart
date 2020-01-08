import 'package:flutter/material.dart';

double ScreenW = 0.0;
double ScreenH = 0.0;

class detailController extends StatefulWidget {
  @override
  detailStates createState() {
    return new detailStates();
  }
}

class detailStates extends State<detailController> {
  @override
  Widget build(BuildContext context) {

    ScreenW = MediaQuery.of(context).size.width;
    ScreenH = MediaQuery.of(context).size.height;
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        title: Text("明细"),
        elevation: 0.0,
      ),
      body: childContiner(),

//      body: ,
    );
  }

  Widget childContiner() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        appbarTopWidget(),
        Expanded(
          child: listview,
        )

      ],
    );
  }


  Widget appbarTopWidget() {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: double.infinity, //宽度尽可能大
          minHeight: 70.0 //最小高度为50像素
      ),
      child: Container(
          height: 5.0,
          child: blueBox
      ),
    );
  }

  Widget appbarBottomWidget() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: 400,
      ),
      child: listview,
    );
  }

  Widget listview = ListView.builder(
      shrinkWrap: true,
      itemCount: 100,
      itemExtent: 50.0, //强制高度为50.0
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      }
  );

  Widget timeBox = Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Padding(padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
        child: Text("2020年",textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 12),),
      ),
      

    ],
  );


  Widget blueBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.blue),
  );
}