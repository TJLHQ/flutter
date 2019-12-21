import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Text('这是一个登陆页面,点击登录会执行登录操作'),
            RaisedButton(
              child: Text('立即登录'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}