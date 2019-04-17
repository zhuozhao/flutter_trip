import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
class UserLogin extends StatefulWidget{
  @override
  _UserLoginState createState() {
    // TODO: implement createState
    return _UserLoginState();
  }
}

class _UserLoginState extends State<UserLogin>{


  TextEditingController accountController = TextEditingController();
  TextEditingController pwdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    _buildEditWidget(){
      return Container(
        margin: EdgeInsets.all(5),
        child: TextField(
          controller: accountController,
          obscureText: false,
          decoration: InputDecoration(
              labelText: '账号',
              hintText: "请输入账号",
              prefixIcon: Icon(Icons.person)
          ),

        ),
      );
    }

    _buildPwdEditWidget(){
      return Container(
        margin: EdgeInsets.all(5),
        child: TextField(
          controller: pwdController,
          obscureText: true,
          decoration: InputDecoration(
              labelText: '密码',
              hintText: "请输入密码",
              prefixIcon: Icon(Icons.lock)
          ),

        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('登录'),centerTitle: false,),
      body: ListView(
        children: <Widget>[
          _buildEditWidget(),
          _buildPwdEditWidget(),
          //登录按钮
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            child: FlatButton(
              child: Text('登录',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                // Perform some action
                _login();
              },
            ),
          ),

        ],
      ),
    );
  }


  void _login(){

    print({'account': accountController.text, 'password': pwdController.text});

   //getHttp();
  }

}



void getHttp() async {
  try {
    Response response = await Dio().get("http://www.baidu.com");
    print(response);
  } catch (e) {
    print(e);
  }
}