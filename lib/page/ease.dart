import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
//import 'package:flutter_easyrefresh/bezier_circle_header.dart';//如果要使用炫酷的样式需要引入，不同的样式引入不同的文件，详见官方api
//import 'package:flutter_easyrefresh/bezier_bounce_footer.dart';//如果要使用炫酷的样式需要引入，不同的样式引入不同的文件，详见官方api
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
//import 'package:flutter_easyrefresh/ball_pulse_header.dart';
//import 'package:flutter_easyrefresh/ball_pulse_footer.dart';
//import 'package:flutter_easyrefresh/phoenix_header.dart';
//import 'package:flutter_easyrefresh/phoenix_footer.dart';
//import 'package:flutter_easyrefresh/taurus_header.dart';
//import 'package:flutter_easyrefresh/taurus_footer.dart';
class Ease extends StatefulWidget {
  @override
  _EaseState createState() => _EaseState();
}

class _EaseState extends State<Ease> {
  List<String> addStr = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "00"];
  List<String> str = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  List<String> only=["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EasyRefresh"),
      ),
      body: Center(
          child:   EasyRefresh(
            header: MaterialHeader(
              backgroundColor: Colors.red,
             completeDuration: Duration(seconds: 1),
            ),
            footer: MaterialFooter(

            ),
            child:   ListView.builder(
                itemCount: str.length,
                itemBuilder: (BuildContext context, int index) {
                  return   Container(
                      height: 70.0,
                      child: Card(
                        child:   Center(
                          child:   Text(
                            str[index],
                            style:   TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ));
                }),
            onRefresh: () async {
              await   Future.delayed(const Duration(seconds: 1), () {
                setState(() {
                  str=only.sublist(0);
                });
              });
              print('onRefresh');
              print(str);
              print('only..................$only');
            },
            onLoad: () async {
              print('onload');
              await  Future.delayed(const Duration(seconds: 1), () {
                  setState(() {
                    str.addAll(addStr);
                  });
              });
            },
          )),
      persistentFooterButtons: <Widget>[
        FlatButton(
            onPressed: () {
//              _easyRefreshKey.currentState.callRefresh();
            },
            child: Text("refresh", style: TextStyle(color: Colors.black))),
        FlatButton(
            onPressed: () {
//              _easyRefreshKey.currentState.callLoadMore();
            },
            child: Text("loadMore", style: TextStyle(color: Colors.black)))
      ], // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
