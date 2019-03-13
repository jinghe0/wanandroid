import 'package:flutter/material.dart';
import 'dart:async';

//加载页面
class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {

  @override
  void initState(){
    super.initState();
    //在加载页面停顿3秒
    new Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacementNamed("splash");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          //加载页面居中背景图 使用cover模式
          Image.asset("images/loading.png",fit: BoxFit.cover,),
        ],
      ),
    );
  }

}