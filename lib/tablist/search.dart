import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){

            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('跳转到登录页'),
              color: Colors.red,
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
            ),
           OutlineButton(
            color: Colors.yellow,
            child: Text('注册'),
            onPressed: (){
              Navigator.pushNamed(context, '/registerFirst');
            },
           ),
           FlatButton(
             color: Colors.red,
            child: Text('FlatButton'),
            onPressed: (){

            },
           ),
            FlatButton(
              color: Colors.red,
              child: Text('跳转到ease'),
              onPressed: (){
                Navigator.pushNamed(context, '/ease');
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final  text;
  final pressed;
  MyButton({Key key,this.width=80,this.height=80,this.text='',this.pressed=null}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        child: Text(text),
        onPressed: pressed,
      ),
    );
  }
}