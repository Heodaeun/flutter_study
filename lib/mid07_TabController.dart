import 'package:flutter/material.dart';

void main() => runApp(MyTabController());

class MyTabController extends StatefulWidget {
  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabController'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.access_alarm)),
              Text('Tab2'),
              Text('Tab3'),
            ],)
          ),
          body: Container(),
        ),
        length: 3,
      )
      
    );
  }
}