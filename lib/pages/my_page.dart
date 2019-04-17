import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/user_login.dart';

class MyPage extends StatefulWidget{
  @override
  _MyPageState createState() {
    // TODO: implement createState
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 1'),
          onPressed: () {
            // Perform some action
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new UserLogin()),
            );

          },
        ),
      ),
    );
  }

}