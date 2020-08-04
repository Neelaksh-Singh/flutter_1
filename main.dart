import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/ui/appbar.dart';
import 'package:task1/ui/bod.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myapp(),
        body: mybody(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}