import 'package:flutter/material.dart';
import 'package:flutter_app4/loading.dart';
import 'package:flutter_app4/page/aa.dart';
import 'package:flutter_app4/page/djs.dart';
import 'package:flutter_app4/page/fromDemo.dart';
import 'package:flutter_app4/page/product.dart';
import 'package:flutter_app4/page/productInfo.dart';
import 'package:flutter_app4/page/text.dart';
import 'package:flutter_app4/page/animation.dart';
import 'package:flutter_app4/user/login.dart';
import 'package:flutter_app4/user/registerFirst.dart';
import 'package:flutter_app4/user/registerSecond.dart';
import 'package:flutter_app4/user/registerThird.dart';
import '../tabs/index.dart';
import '../common/webview.dart';
import '../page/hd.dart';
import '../page/ease.dart';
final routes={
  '/':(context)=>SplashScreen(),
  '/webview':(context)=>WebView(),
  '/djs':(context)=>LoadingPage(),
  '/tab':(context)=>Tabs(),
  '/animations':(context)=>AnimationTest(),
  '/text':(context)=>TextFieldDemo(),
  '/fromDemo':(context)=>FromDemo(),
  '/aa':(context)=>Aa(),
  '/product':(context)=>Product(),
  '/productInfo':(context,{arguments})=>ProductInfo(arguments:arguments),
  '/login':(context)=>Login(),
  '/registerFirst':(context)=>RegisterFirst(),
  '/registerSecond':(context)=>RegisterSecond(),
  '/registerThird':(context)=>RegisterThird(),
  '/hd':(context)=>Hd(),
  '/ease':(context)=>Ease()

};
//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};