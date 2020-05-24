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
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      title: 'Flutter ep 12',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter ep 12'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('jjgjjgjgjgjgjgjgjg'),
              subtitle: Text('jjgjjgjgjgjgjgjgjg'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
