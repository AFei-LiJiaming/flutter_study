import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/main.dart';

void main() {
  runApp(MyApp());
}

class WidgetPractice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetShow"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/boy.png"),
            Positioned(
              top: 40,
              right: 10,
              child: Image.asset("assets/images/me.png", width: 200.0),
            )
          ],
        )
      ),
    );
  }
}