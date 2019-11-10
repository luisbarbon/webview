import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: WebviewScaffold(
          url: 'http://sislimpa.pedido.la',
          hidden: true,
        ),
      ),
    );
  }
}

