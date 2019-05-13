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

  String account,password;
  TextEditingController accountController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();



  String vldAccount(value){

    if(value.isEmpty){
      return '请输入账号';
    }
    return null;
  }
  @override
  void initState() {
    // TODO: implement initState
    //初始化账号密码
    accountController.text='qzsphnt';
    pwdController.text ='qzsphnt2011';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    _buildEditWidget(){
      return Container(
        margin: EdgeInsets.all(16),
        child: TextFormField(
          onSaved: (value){
            account = value;
          },
          validator: vldAccount,
          controller: accountController,
          obscureText: false,
          decoration: InputDecoration(
              labelText: '账号',
              hintText: "请输入账号",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder()
          ),

        ),
      );
    }

    _buildPwdEditWidget(){
      return Container(
        margin: EdgeInsets.all(16),
        child: TextFormField(
//          onSubmitted: (value){
//            debugPrint('submit:$value');
//          },
          onSaved: (value){
            password =value;
          },
          controller: pwdController,
          obscureText: true,
          decoration: InputDecoration(
              labelText: '密码',
              hintText: "请输入密码",
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder()
          ),

        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('登录'),centerTitle: false,),
      body: ListView(
        children: <Widget>[
          Form(
            key: loginFormKey,
            child: Column(
              children: <Widget>[
                _buildEditWidget(),
                _buildPwdEditWidget(),
              ],
            ),
          ),
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

  @override
  void dispose() {
    // TODO: implement dispose
    accountController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  void _login(){

    loginFormKey.currentState.save();
    loginFormKey.currentState.validate();
    debugPrint('account: $account password: $password');

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