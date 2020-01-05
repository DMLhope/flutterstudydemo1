import 'package:flutter/material.dart'; //flutter基于dart语言编写，material则是google公司推行的一套设计风格、规范
import 'model/post.dart';

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
      //home:Hello()
      home: Home(),
      theme: ThemeData(//设置material应用的主题
        primarySwatch: Colors.yellow,//界面主要颜色设置
      ),
    );//返回一个material风格的app
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Center( //居中显示的小部件类似于控件但又有所不同
      child: Text( //设置child属性，在里面添加text的widget
        'hello',
        textDirection: TextDirection.ltr, //设置文字从左到右显示
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue,
        ),//style可以设置文字的属性
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index){//定义一个_listItemBuilder的方法，接收一个context和一个index的参数，index表示里面项目的所印值
    return Container(//容器
      color: Colors.white,
      margin: EdgeInsets.all(8.0),//设置container的外边距
      child: Column(//柱、圆柱、纵行等意思
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,//文字主题title
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,//文字主题subhead
          ),
          SizedBox(height: 16.0),

        ],
      ),//child来定义里面的内容的样式
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(//scaffold也是material里面带的一个小部件，包含了一些material风格页面常用的一些页面组件，例如页面顶部或者底部的工具栏
        backgroundColor: Colors.grey[100],
        appBar: AppBar(//顶部工具栏
          title: Text(
            'DML',
            style: TextStyle(
              color: Colors.black87
            ),
          ),
          elevation: 20.0,//顶部工具栏下方的阴影面积设置
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,//这里调用一个_listItemBuilder的方法
        ),
      );
  }
}