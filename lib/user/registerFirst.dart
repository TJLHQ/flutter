import 'package:flutter/material.dart';
class RegisterFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步输入手机号'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text('这是注册的第一步，请输入你的手机号码 然后点击下一步'),
          SizedBox(height: 40,),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/registerSecond');
            },
          )
        ],
      ),
    );
  }
}