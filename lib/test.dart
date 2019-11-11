import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wiki_browser/home.dart' as home;
import 'package:http/http.dart' as http;

const request = "http://www.sislipa.pedido.la";

class test extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<test> {

  Future<Map> _getData() async {
    http.Response response;

    response = await http.get(request);

    return jsonDecode(response.body);
  }

  @override
  void initState() {
    super.initState();
    Timer (Duration (seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      _getData().then(());
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
