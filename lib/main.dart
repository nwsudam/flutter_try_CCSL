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
        brightness: Brightness.light,
        primarySwatch: Colors.red,
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
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    title.text = 'Hello';
    String test = title.text;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLength: 8,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                ),
                controller: title,
                onChanged: (text) {
                  print(text);
                },
                keyboardType: TextInputType.number,
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
