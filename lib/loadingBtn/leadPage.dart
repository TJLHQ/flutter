import 'package:flutter/material.dart';
import './btnPage.dart';
//引导页
class LeadPage extends StatefulWidget{

  @override
  _LeadPageState createState() => _LeadPageState();

}
class _LeadPageState extends State<LeadPage>{

//引出带动画的widget
  AnimationPage aniPage =AnimationPage();
  
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //层叠布局
    return  Stack(
      alignment: Alignment.center,
      children: <Widget>[
      //背景
        Image(image: AssetImage('images/5.jpg')),
       //添加一个pageview
         PageView(
        //设置为水平滚动 并添加素材
          scrollDirection: Axis.horizontal,
          children: <Widget>[
             Image(image:AssetImage('images/1.jpg')),
             Image(image:AssetImage('images/2.jpg')),
             Image(image:AssetImage('images/3.jpg')),
            aniPage,
          ],
          //翻页事件
          onPageChanged:startPagePaged,
        )
      ],
    );
  }
  void startPagePaged(int page){

    if (page == 3 ){
    //当到达带按钮的页面时触发动画
      aniPage.btn.startAnimation();
    }

  }

}