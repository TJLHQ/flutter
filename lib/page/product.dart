import 'package:flutter/material.dart';
class Product extends StatelessWidget {
  final String title;
  Product({this.title='跳转到详情页'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text(title),
          onPressed: (){
            Navigator.pushNamed(context, '/productInfo',arguments: {
              "pid":45
            });
          },
        ),
      ),
    );
  }
}