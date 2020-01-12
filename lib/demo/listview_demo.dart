import 'package:flutter/material.dart'; //flutter基于dart语言编写，material则是google公司推行的一套设计风格、规范
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,//这里调用一个_listItemBuilder的方法
        );
  }
  
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
}