import 'package:flutter/material.dart';
import 'package:shopping/test.dart';
import 'Login.dart';
import 'test.dart';
import 'Airiline.dart';
import '_loading.dart';
import 'MYLISTVIEW.dart';
import 'MylistviewBUilder.dart';
import 'Mylist2.dart';
void main(List<String> args){
  runApp(app());
}

class app extends StatelessWidget {
  //const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:'Shopping App',
    home: Mylist2(),


    //close debug
    debugShowCheckedModeBanner: false,
    );

  }
}