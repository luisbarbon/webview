import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wiki_browser/home.dart' as home;

const request = "http://www.sislipa.pedido.la";

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer (Duration (seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return home.MyApp();
    })));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/sislimpa_logo.png'),
        ],),
    );
  }
}