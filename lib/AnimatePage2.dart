import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatePage2 extends StatefulWidget{
  _AnimatePage createState() => _AnimatePage();
}

class _AnimatePage extends State<AnimatePage2> with SingleTickerProviderStateMixin{
  
  Animation<double> animation;
  AnimationController controller;
  
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this
    );

    //使用弹性曲线，数据变化从0到300
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    animation = Tween(begin: 0.0, end: 300.0).animate(animation)
    ..addListener(() {
      setState(() {

      });
    });

    //启动动画（正向执行）
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate Page"),
      ),
      body: Center(
        child: Image.asset(
            "assets/boy.png",
            width: animation.value,
            height: animation.value),
      ),
    );
  }

  @override
  void dispose() {
    //路由销毁时释放动画资源
    controller.dispose();
    super.dispose();
  }
  
}