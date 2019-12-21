import 'package:flutter/material.dart';
import 'package:flutter_app4/routes/index.dart';
import 'routes/index.dart';
import 'package:provider/provider.dart';
import './providers/counter.dart';
import './loadingBtn/leadPage.dart';

void main() {
  final textSize = 48;
  final String name = '小明';
  runApp(MultiProvider(
    providers: [
      Provider.value(
        value: textSize,
      ),
      Provider.value(
        value: name,
      ),
      ChangeNotifierProvider(
        builder: (_) => Counter(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter_app',
        home: LeadPage(),
        theme:
            ThemeData(primaryColor: Colors.black, platform: TargetPlatform.iOS),
        onGenerateRoute: onGenerateRoute);
  }
}
