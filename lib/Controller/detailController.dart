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
          child: RowBox
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
//        return ListTile(title: Text("$index"));
        print(index);
        return index % 10 == 0 ? Container(
          color: Colors.grey.withOpacity(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Header",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text("Feb 26th, 2019",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black45,
                  )),
            ],
          ),
          padding: EdgeInsets.all(10.0),
        )
            : ListTile(title: Text("$index"));
      }
  );

  Widget RowBox = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: blueBox,
      ),
      Expanded(
        flex: 1,
        child: monthBox("收入","0.0"),
      ),
      Expanded(
        flex: 1,
        child: monthBox("支出", "3801.0"),
      )
    ],
  );

  static Widget monthBox(title,time) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 5),
            child: Text(title,textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 12),),
          ),
          Padding(padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5,),
            child: Text(time,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white,fontSize: 14),),
          )
        ],
      ),
    );
  }


  static Widget blueBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.blue),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 20,top:10,right: 10,bottom: 5),
          child: Text("2020年",textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 12),),
        ),
        Padding(padding: EdgeInsets.only(left: 20,top: 5,right: 10,bottom: 5,),
            child: Text("01月",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white,fontSize: 14),)
        )
      ],
    )
  );
}