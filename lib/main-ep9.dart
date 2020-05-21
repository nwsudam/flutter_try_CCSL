import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
//    enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Ep 8"),
      ),
      body: Container(
        color: Colors.pink,
        width: 500,
        child: Row(
         
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Text 01',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Text 02',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Text 02',
              style: TextStyle(fontSize: 20),
            ),
           Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               Text(
              'Text 01',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Text 02',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Text 02',
              style: TextStyle(fontSize: 20),
            ),
             ],
           ),
          
          ],
        ),
      ),
    );
  }
}
