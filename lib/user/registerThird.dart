import 'package:flutter/material.dart';
class RegisterThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成注册'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text('输入密码完成注册'),
          SizedBox(height: 40,),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              Navigator.pop(context,'我是返回的数据');
            },
            // onPressed: (){
            //   Navigator.pushAndRemoveUntil(context, newRoute, predicate)
            // },
          )
        ],
      ),
    );
  }
}