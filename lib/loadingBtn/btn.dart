import 'package:flutter/material.dart';
class AnimationBtn extends StatefulWidget{
//按钮标题
  final String Title;
  
  AnimationController controller;
  Animation<double> animation;

//开始动画方法
  void startAnimation(){
 
    if(controller == null){
      return;
    }
     controller.forward();

  }
AnimationBtn({Key key,this.Title}):super(key:key);
  @override
  _AnimationBtnState createState() =>   _AnimationBtnState();
}

class _AnimationBtnState extends State<AnimationBtn> with SingleTickerProviderStateMixin{

  @override
  void initState() {
  //初始化动画控制器和动画
  //配置控制器 动画持续时间
    widget.controller =   AnimationController(duration: const Duration(seconds: 2),vsync: this);
    
    //动画描述,在持续时间内值的变化
    widget.animation =   Tween(begin: 0.0 , end: 60.0).animate(widget.controller)..addListener((){
//值发生变化后setsatate即可
    setState(() {

    });});
   Future.delayed(Duration(seconds: 3),(){
     print('3333');
  Navigator.pushReplacementNamed(context, '/tab');
   });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return   OutlineButton(
      onPressed: intoAppBtnClick,
      child: Text(widget.Title,
        style:  TextStyle(
            color: Color.fromRGBO(100, 10, 10, widget.animation.value/60)) ,),);
//动画开始后。在控制器中设定的时间内会不断调用addListener传递的方法,并且widget.animation.value会在持续时间内按照设定的开始和结束均匀变化,利用这个值设定渐变,位移等即可
  }

//按钮的点击事件
  void intoAppBtnClick() {
    
  }
  dispose() {
    //路由销毁时需要释放动画资源
    widget.controller.dispose();
    super.dispose();
  }
}
