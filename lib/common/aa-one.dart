import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app4/providers/counter.dart';
class Aaone extends StatefulWidget {
  @override
  _AaoneState createState() => _AaoneState();
}

class _AaoneState extends State<Aaone> with AutomaticKeepAliveClientMixin {
  int count=0;
  @override
  bool get wantKeepAlive=>true;
  @override
  void initState(){
    print('one initState');
    super.initState();
  }
  @override
  void deactivate(){
    print('one deactivate');
    super.deactivate();
  }
  @override
  void dispose(){
    print('one dispose');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
     final _counter=Provider.of<Counter>(context);
    final textSize=Provider.of<int>(context).toDouble();
    final _name=Provider.of<String>(context);
    print('provider....aaa');
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
           count++; 
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('$count'),
            Text('value${_counter.value}'),
            RaisedButton(
              onPressed: (){
                _counter.increment();
              },
              child: Text('文字',style: TextStyle(fontSize: textSize),),
            ),
            Text('$_name')
          ],
        ),
      ),
    );
  }
}