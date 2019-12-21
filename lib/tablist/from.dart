import 'package:flutter/material.dart';

class From extends StatefulWidget {
  @override
  _FromState createState() => _FromState();
}

class _FromState extends State<From> with SingleTickerProviderStateMixin {
  TabController _tabController;
  double opacity = 1;
  double width=50;
  bool first=false;
  void _setOpacity() {
    setState(() {
      first=first?false:true;
    });
  }

  @override
  void initState() {
    print('initState');
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('demo'),
          centerTitle: true,
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                  icon: Icon(Icons.home),
                  text: '首页2'),
              Tab(
                icon: Icon(Icons.search),
                text: '搜索',
              ),
              Tab(
                icon: Icon(Icons.category),
                text: '分类',
              )
            ],
            controller: _tabController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
                  AnimatedCrossFade(
                    firstChild: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child: Text('333'),
                    ),
                    secondChild: Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                      child: Text('456'),
                    ),
                    crossFadeState: first?CrossFadeState.showFirst:CrossFadeState.showSecond,
                    duration: Duration(seconds: 1),
                  ),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.red,
                      child:RaisedButton(
                      child: Text('按钮'),
                      textColor: Colors.white,
                     
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: _setOpacity,
                      elevation: 2,
                    ),
                    )
                    
                  
                ],
              ),
            ),
            Center(
              child: Text('搜索'),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text('FromA'),
                  FlatButton(
                    child: Text('跳转到product'),
                    color: Colors.pink,
                    onPressed: () {
                      Navigator.pushNamed(context, '/product');
                    },
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
