import 'package:flutter/material.dart';
class Hd extends StatelessWidget {
  List<String> items = new List<String>.generate(30, (i) => "列表项 ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext text,int index){
          final item=items[index];
          return Dismissible(
              key: Key(item),
              onDismissed: (direction){
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("$item 被删除了")));
              },
              child: new ListTile(title: new Text('$item'),)
          );
        }
    );
  }
}
