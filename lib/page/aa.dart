import 'package:flutter/material.dart';
import 'package:flutter_app4/common/aa-one.dart';
import 'package:flutter_app4/common/aa-tow.dart';


class Aa extends StatefulWidget {
  @override
  _AaState createState() => _AaState();
}

class _AaState extends State<Aa> {
  int num;

  @override
  void initState(){
    print('initState');
    super.initState();
  }
  @override
  void didChangeDependencies(){
    print('didChangeDependercies');
    super.didChangeDependencies();
  }
  @override
  void didUpdateWidget(oldWidget){
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }
  @override
  void deactivate(){
    print('deactivate');
    super.deactivate();
  }
  void dispose(){
    print('dispose');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('aa'),
            backgroundColor: Colors.blue,
            centerTitle: true,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Aaone(),
              Aatwo(onPress: (index){
                print('我是aa的$index');
              },),

            ],
          )
          ),
    );
  }
}

