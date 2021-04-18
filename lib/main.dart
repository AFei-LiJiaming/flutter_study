import 'package:flutter/material.dart';
import 'package:flutter_study/AnimatePage.dart';
import 'package:flutter_study/AnimatePage2.dart';
import 'package:flutter_study/Echo.dart';
import 'package:flutter_study/FlexPage.dart';
import 'package:flutter_study/List.dart';

import 'DetailPage.dart';
import 'Page2.dart';
import 'WidgetPractice.dart';



class MyApp extends StatelessWidget {
  //this widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      //路由表定义
        routes: {
        "ListPage" :(context) => ListPage(),
          "Page2" :(context) => Page2(),
          "DetailPage" :(context) => DetailPage(),
          "WidgetPractice" :(context) => WidgetPractice(),
          "FlexPage" :(context) => FlexPage(),
          "AnimatePage" :(context) => AnimatePage(),
          "AnimatePage2" : (context) => AnimatePage2()
        },

      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var msg = "Hello World";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("我是title"),
      ),
      body: Center(
        child: Column(
          children:<Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "ListPage");
              },
              child: Text("Click to ListPage",)
            ),
            RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "AnimatePage2");
                },
            child: Text("Click to AnimatePage2"))
          ],
        ),
      ),
    );
  }
}
