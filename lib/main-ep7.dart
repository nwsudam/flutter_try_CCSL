import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
//main() {
//  runApp(MyApp());
//}
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
//      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MickFrost'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Image.asset("assets/as.jpg", fit: BoxFit.cover),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: 'Car',),
              Tab(icon: Icon(Icons.directions_transit),text: 'Train',),
              Tab(icon: Icon(Icons.directions_bike),text: 'Cycle',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab1(){
  return Container(
    child: Center(
      child: Text('Car mode'),
    ),
  );
}