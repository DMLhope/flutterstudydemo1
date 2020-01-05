import 'package:flutter/material.dart'; //flutter基于dart语言编写，material则是google公司推行的一套设计风格、规范

void main() {
  runApp(  //所有的程序运行在这个块里面
    Center( //居中显示的小部件类似于控件但又有所不同
      child: Text( //设置child属性，在里面添加text的widget
        'hello',
        textDirection: TextDirection.ltr, //设置文字从左到右显示
      ),
    )
  );
}