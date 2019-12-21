import 'package:flutter/material.dart';
import 'package:flutter_app4/tablist/category.dart';
import 'package:flutter_app4/tablist/from.dart';
import 'package:flutter_app4/tablist/home.dart';
import 'package:flutter_app4/tablist/search.dart';
import 'package:flutter_app4/tablist/setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  final _defaultColor=Colors.grey;
  final _activeColor=Colors.blue;
  var _controller=PageController(initialPage: 0);
  final double count = 25;
  List _listPage = [Home(), Category(), Setting(), Search(), From()];
  _TabsState(index) {
    this._currentIndex = index;
  }
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        // scrollDirection: Axis.vertical,
         physics: NeverScrollableScrollPhysics(),
        children: <Widget>[Home(), Category(), Setting(), Search(), From()],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color.fromRGBO(252, 252, 252, 1)),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 50,
          ),
          elevation: 0,
          onPressed: () {
            print('hhhh');
            _controller.jumpToPage(2);
            setState(() {
              _currentIndex = 2;
            });
          },
          backgroundColor: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 30,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _bottomItem(Icons.home, '首页', 0),
          _bottomItem(Icons.category, '分类', 1),
          _bottomItem(Icons.settings, '', 2),
          _bottomItem(Icons.search, '查询', 3),
          _bottomItem(Icons.format_align_center, '表格', 4)
        ],
      ),
    );
  }
// 底部导航item
BottomNavigationBarItem _bottomItem(IconData icon,String title,int index){
  return BottomNavigationBarItem(
    icon:Icon(icon,color: _defaultColor,),
    activeIcon: Icon(icon,color: _activeColor,),
    title: Text(title,style: TextStyle(color: _currentIndex!=index?_defaultColor:_activeColor),)
  );
}
}
