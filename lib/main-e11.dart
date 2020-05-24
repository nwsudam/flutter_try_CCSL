import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test1/screens/second_screen.dart';

import 'screens/home_page.dart';

void main() => runApp(
      DevicePreview(
//    enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: MyHomePage(title: 'Flutter Navigation'),
      home: MyHomePage(title: 'Flutter Navigation'),
      routes: <String, WidgetBuilder>{
        '/second': (context) => SecondScreen("Hello"),
      },
    );
  }
}
