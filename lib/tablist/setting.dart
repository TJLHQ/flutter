import 'package:flutter/material.dart';
import '../model/list.dart';
class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setting'),
        backgroundColor: Colors.red,
        ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
          return ListTile(
          title: Text(list[index].title),
          subtitle: Text(list[index].author),
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Text(
              '1',
            style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          ),
          onTap: (){
            print(index);
          },
       );
        },
      )
    );
  }
}