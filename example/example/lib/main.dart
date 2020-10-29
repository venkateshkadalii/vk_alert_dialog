import 'package:flutter/material.dart';
import 'package:vk_alert_dialog/vk_alert_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'AlertDialog Example'),
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

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text('Click below fab for AlertDialog'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await VkAlertDialog.showVkAlertDialog(context: context, willDisplayWidget: Container(
            child: Text('Custom Alert Dialog!'),
          ));
        },
        tooltip: 'Show Custom Alert Dialog',
        child: Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
