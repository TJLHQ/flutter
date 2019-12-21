import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.yellow,
                  labelColor: Colors.yellow,
                  unselectedLabelColor: Colors.white,
                  tabs: <Widget>[
                    Tab(text: '推荐0'),
                    Tab(text: '推荐1'),
                    Tab(text: '推荐2'),
                    Tab(text: '推荐3'),
                    Tab(text: '推荐4'),
                    Tab(text: '推荐5'),
                    Tab(text: '推荐6'),
                    Tab(text: '推荐7')
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(title: Text("第一个tab")),
                ListTile(title: Text("第一个tab")),
                ListTile(title: Text("第一个tab"))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第二个tab")),
                ListTile(title: Text("第二个tab")),
                ListTile(title: Text("第二个tab"))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第三个tab")),
                ListTile(title: Text("第三个tab")),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第四个tab")),
                ListTile(title: Text("第四个tab"))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第五个tab")),
                ListTile(title: Text("第五个tab")),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第六个tab")),
                ListTile(title: Text("第六个tab")),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第七个tab")),
                ListTile(title: Text("第七个tab"))
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第八个tab")),
                ListTile(title: Text("第八个tab"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
