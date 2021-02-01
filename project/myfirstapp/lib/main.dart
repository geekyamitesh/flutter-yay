import 'package:flutter/material.dart';

/*
MaterialApp
Scaffold
AppBar
TabBar
TabBarView
ListTitle
.
.
.
LayoutWidget :- {
  1. Container
  2. Center
  3. Row
  4. Column
  5. Stack
}
State maintenance widget :- 1. stateless & stateful

*/

void main() {
  runApp(MyApp());
}

// with help of extends keyboard we are inherited stalesswidget
class MyApp extends StatelessWidget {
  @override

  //you can memorized this line
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter  Class'),
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () => {},
      ),
    ));
  }
}
