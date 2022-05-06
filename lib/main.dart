import 'package:flutter/material.dart';
import 'package:nabil/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IOT',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[350],
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: Home(),
      ),
    );
  }
}
