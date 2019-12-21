import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  void initState() { 
    
    _controller = AnimationController(vsync:this,duration:Duration(milliseconds:3000));
    _animation = Tween(begin: 0.0,end:1.0).animate(_controller);


    /*动画事件监听器，
    它可以监听到动画的执行状态，
    我们这里只监听动画是否结束，
    如果结束则执行页面跳转动作。 */
    _animation.addListener((){
      setState(() {
        
      });
    });
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        print('completed');
        // Navigator.pushNamed(context, '/tab');
        Navigator.pushNamedAndRemoveUntil(context, '/tab', (route)=>false);
      }
      setState(() {
        
      });
    });
    //播放动画
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return FadeTransition( //透明度动画组件
      opacity: _animation,  //执行动画
      child: Image.network(  //网络图片
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
        scale: 2.0,  //进行缩放
        fit:BoxFit.cover  // 充满父容器
      ),
    );
  }
}