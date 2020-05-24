import 'package:flutter/material.dart';

import 'home_page.dart';

class SecondScreen extends StatelessWidget {
  String text;

  SecondScreen(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context, MyHomePage());
            }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
