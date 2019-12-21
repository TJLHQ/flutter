import 'package:flutter/material.dart';
class FromDemo extends StatefulWidget {
  @override
  _FromDemoState createState() => _FromDemoState();
}

class _FromDemoState extends State<FromDemo> {
  String username;
  int sex=1;
  String info='';
  List hobby=[
    {
      "checked":true,
      "title":"吃饭"
    },
    {
      "checked":false,
      "title":"睡觉"
    },
    {
      "checked":true,
      "title":"写代码"
    }
  ];
  List<Widget> _getHobby(){
    List<Widget> tempList=[];
    for(var i=0;i<this.hobby.length;i++){
      tempList.add(
        Row(children: <Widget>[
          Text(hobby[i]["title"]+":"),
          Checkbox(
            value: hobby[i]["checked"],
            onChanged: (val){
              setState(() {
               hobby[i]['checked']=val;
              });
            },
          )
        ],)
      );
    }
    return tempList;
  }
  void _sexChanged(val){
    setState(() {
     sex=val; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fromDemo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText:'输入用户信息'
              ),
              onChanged: (val){
                setState(() {
                 username=val; 
                });
              },
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: _sexChanged,
                  groupValue: sex,
                ),
                SizedBox(width: 20,),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: _sexChanged,
                  groupValue: sex,
                )
              ],
            ),
            SizedBox(height: 40,),
            Column(
              children: _getHobby(),
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: '描述信息',
                border: OutlineInputBorder()
              ),
              onChanged: (val){
                info=val;
              },
            ),
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('提交信息'),
                onPressed: (){
                  print(username);
                  print(sex);
                  print(info);
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