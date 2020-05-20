import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MickFrost'),
        ),
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
