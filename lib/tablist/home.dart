import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Home3'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'more_horiz',
            onPressed: () {
              print('more_horiz');
            },
          )
        ],
      ),
      drawer: Drawer(
          child: Container(
        padding: EdgeInsets.only(left: 30, top: 30),
        color: Color.fromRGBO(27, 40, 66, 1),
        child: Column(
          children: <Widget>[
            Container(
              height: 82,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '21°',
                    style: TextStyle(
                        color: Color.fromRGBO(242, 242, 242, 1),
                        fontSize: 36,
                        letterSpacing: 2),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '星期六',
                          style: TextStyle(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              fontSize: 13,
                              letterSpacing: 2),
                        ),
                        Text(
                          '2018-08-20',
                          style: TextStyle(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              fontSize: 13,
                              letterSpacing: 2),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 9, bottom: 31),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571655403005&di=98dc40a6af817059a1a39fc85ad63dff&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201605%2F25%2F20160525073114_NXSBf.thumb.700_0.jpeg'),
                radius: 30,
              ),
            ),
            Container(
              height: 91,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1, color: Color.fromRGBO(49, 60, 84, 1)))),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.add_location,
                    size: 20,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      '杭州',
                      style: TextStyle(
                          fontSize: 15, color: Colors.white, letterSpacing: 2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      'hanghzou',
                      style: TextStyle(
                          fontSize: 15, letterSpacing: 2, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 205,
              padding: EdgeInsets.only(top: 45, bottom: 45),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1, color: Color.fromRGBO(49, 60, 84, 1)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.home,color: Colors.white,size: 20,),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          '主页',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          'HOME',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.people,color: Colors.white,size: 20,),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          '关于',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          'ABOUT',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.settings,color: Colors.white,size: 20,),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          '设置',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          'SETTINGS',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('跳转到/text'),
              onPressed: () {
                Navigator.pushNamed(context, '/text');
              },
            ),
            RaisedButton(
              child: Text('跳转到fromDemo'),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/fromDemo');
              },
            ),
            RaisedButton(
              child: Text('跳转到aa'),
              color: Colors.yellow,
              onPressed: () {
                Navigator.pushNamed(context, '/aa');
              },
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animations');
              },
              child: Text('animation'),
              color: Colors.pink,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('跳转到动画也'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/djs');
              },
              child: Text('倒计时'),
            ),
            RaisedButton(
              child: Text('跳转view'),
              onPressed: () {
                Navigator.pushNamed(context, '/webview');
              },
            ),
            RaisedButton(
              child: Text('跳转hb'),
              onPressed: () {
                Navigator.pushNamed(context, '/hd');
              },
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
              child: FractionallySizedBox(
                alignment: Alignment.topLeft,
                widthFactor: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
