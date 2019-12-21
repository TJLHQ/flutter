import 'package:flutter/material.dart';
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> with AutomaticKeepAliveClientMixin {
  var _username=new TextEditingController();
  var _passwd;
  @override
  bool get wantKeepAlive=>true;
  @override
  void initState(){
    print('我是text的init');
    super.initState();
    _username.text='初始值';
  }
  @override
  void dispose(){
    print('我是text的dispose');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.add),
                hintText: '请输入用户名',
                border: OutlineInputBorder()
              ),
              controller: _username,
              onChanged: (val){
                setState(() {
                 _username.text=val; 
                });
              },
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码'
              ),
              onChanged: (val){
                setState(() {
                 _passwd=val; 
                });
              },
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登录',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 10
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                onPressed: (){
                  print(_username.text);
                  print(_passwd);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}