import 'package:flutter/material.dart';
import './btn.dart';
//带有动画按钮的页面
class AnimationPage extends StatefulWidget{

//设置一个标题
  AnimationBtn btn = AnimationBtn(Title: '开启新版',);

  @override
  _AnimationPageState createState() =>_AnimationPageState();
}
class _AnimationPageState extends State<AnimationPage>{
  @override
  Widget build(BuildContext context) {
    //层叠
    return Stack(
    //中心对齐
      alignment: Alignment.center,
      children: <Widget>[
        Center(
          child:Image(image:AssetImage('images/4.jpg')),
        ), 
        Positioned(
       //设置一个位置,距离底部60
          bottom: 60,
          child: widget.btn
       )
      ],
    );
  }
}