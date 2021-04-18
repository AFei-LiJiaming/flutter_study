import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //定义列表Widget的list
    List<Widget> list = <Widget>[];

    //Demo数据
    var data = [
      {"id":1,"title":"测试数据AAA","subtitle":"ASDFASDFASDF"},
      {"id":2,"title":"测试数据bbb","subtitle":"ASDFASDFASDF"},
      {"id":3,"title":"测试数据ccc","subtitle":"ASDFASDFASDF"},
      {"id":4,"title":"测试数据eee","subtitle":"ASDFASDFASDF"},
    ];

    //根据Demo数据，构建列表ListTile组件list
    for(var item in data){
      print(item["title"]);

      list.add(ListTile(
        title: Text(item["title"], style: TextStyle(fontSize: 18.0)),
        subtitle: Text(item["subtitle"]),
        leading: Icon(Icons.face, color: Colors.orange),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap:(){
          //点击的时候，进行路由跳转传参
          Navigator.pushNamed(context, "DetailPage",arguments: item);
        },
      ));
    }

    //返回整个页面
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}