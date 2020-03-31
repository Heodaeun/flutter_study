import 'package:flutter/material.dart';

void main() => runApp(MyDrawer());

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(
                color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item1'),
                onTap: (){
                  //할 일 작성
                  Navigator.pop(context); //이전 화면으로 되돌아감
                },
              ),
              ListTile(
                title: Text('Item2'),
                  onTap: (){
                  //할 일 작성
                  Navigator.pop(context); //이전 화면으로 되돌아감
                },
              ),
              ListTile(
                title: Text('Item3'),
                  onTap: (){
                  //할 일 작성
                  Navigator.pop(context); //이전 화면으로 되돌아감
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Drawer'),
        ),
        body: Center(
          child: Text('Drawer 예제'),
        )
      )
    );
  }
}