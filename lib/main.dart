import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final caption = 'My Drawer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: caption,
      home: HomePage(caption: caption),
    );
  }
}

class HomePage extends StatelessWidget {
  final String caption;
  HomePage({Key key, this.caption}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(caption)),
    );
  }
}
