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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                await VKAlertDialog.successDialog(
                    icon: Icon(Icons.account_circle),
                    context: context,
                    title: 'Profile Update',
                    description: 'profile has been updated successfully',
                    buttonText: 'OK');
              },
              child: Text('Success Dialog'),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () async {
                await VKAlertDialog.errorDialog(
                    context: context,
                    title: 'Profile Update',
                    description: 'profile update failed, please try again',
                    buttonText: 'OK');
              },
              child: Text('Error Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
