import 'package:flutter/material.dart'; //flutter基于dart语言编写，material则是google公司推行的一套设计风格、规范
import './demo/listview_demo.dart';

// void main() {
//   runApp(  
//     App()
//   );//所有的程序运行在这个块里面
// }
//另一种写法
void main() => runApp(App());

//自定义小部件可以定义一个class，也就是类，extends表示继承，小部件的类可以继承自statelesswidget或者statefulwidget
//不需要修改数据的小部件可以继承自statelesswidget
//需要修改数据的小部件可以继承自statefulwidget
class App extends StatelessWidget {
  @override //这里需要一个build的方法，方法接收一个context的参数，下面的Widget表示的是这个方法返回的类型，@override指的是覆盖方法父类里面的build的方法
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉debug标签
      //home:Hello()
      home: Home(),//指定默认要使用的小部件
      theme: ThemeData(//设置material应用的主题
        primarySwatch: Colors.yellow,//界面主要颜色设置
      ),
    );//返回一个material风格的app
  }
}



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(//顶部工具栏
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: ()=>debugPrint("navigration button is pressed"),//给他一个回调，在激活的时候执行在控制台输出
          ),
          title:Text('DML'),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: ()=>debugPrint("search button is pressed"),//给他一个回调，在激活的时候执行在控制台输出
          ),
          ],
          elevation: 20.0,//顶部工具栏下方的阴影面积设置
        );
    return Scaffold(//scaffold也是material里面带的一个小部件，包含了一些material风格页面常用的一些页面组件，例如页面顶部或者底部的工具栏
        backgroundColor: Colors.grey[100],
        appBar: appBar2,
        body: null
      );
  }
}



