import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter.dart';
class Aatwo extends StatefulWidget {
  final Function(int) onPress;
  Aatwo({Key key, @required this.onPress}) : super(key: key);
  @override
  _AatwoState createState() => _AatwoState();
}

class _AatwoState extends State<Aatwo> with AutomaticKeepAliveClientMixin {
  int count = 0;
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    print('two initState');
    super.initState();
  }

  @override
  void deactivate() {
    print('two deactivate');
    super.deactivate();
  }

  @override
  void didUpdateWidget(oldWidget) {
    print('........$oldWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('aa');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('two dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final _count=Provider.of<Counter>(context);
    // final _fontSize=Provider.of<int>(context).toDouble();
    print('provider....bb');
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
            widget.onPress(count);
          },
          child: Icon(Icons.add),
        ),
        body: Consumer2<Counter,int>(builder: (context,Counter _count,int _fontSize,_)=>Column(
          children: <Widget>[
            Center(
              child: Text('$count'),
            ),
            ExpansionTile(
              title: Text('我是demo1'),
              leading: Icon(Icons.add),
              backgroundColor: Colors.red,
              initiallyExpanded: true,
              children: <Widget>[
                ListTile(
                  title: Text('我是内页'),
                  leading: Icon(Icons.add_a_photo),
                  subtitle: Text('我是列表'),
                  trailing: Icon(Icons.redo),
                )
              ],
            ),
            Text('value:${_count.value}',style: TextStyle(fontSize: _fontSize.toDouble()),),
            RaisedButton(
              onPressed: (){
                  _count.subtruct();
              },
              child: Icon(Icons.subject),
            ),
            RaisedButton(
              onPressed: (){
                _count.getCount(20);
              },
              child: Text('设置值'),
            )
          ],
        ),)
        



        );
  }
}
