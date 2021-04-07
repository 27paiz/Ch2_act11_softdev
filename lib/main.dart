// จงสร้างโปรแกรมจาก Flutter โดยใช้ Container ให้สามารถแสดงข้อความ ขื่อ นามสกุล รหัส เมื่อกดปุ่มสี่เหลี่ยม เมื่อไม่กดปุ่ม ให้แสดงข้อความว่า Press this button
import 'package:flutter/material.dart';

//6135512044
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    try {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // some code
            print('Action in Snackbar has been pressed.');
          },
        ),
      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('SANANYA'),
        ),
        body: Center(
            child: Container(
                height: 80.0,
                width: 200.0,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.purple[900],
                  child: Text('Press this button'),
                  onPressed: () {
                    _showMessageInScaffold("Sananya Wangpradit 6135512036");
                  },
                ))));
  }
}
