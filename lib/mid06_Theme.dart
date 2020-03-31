import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(					
      title: 'Welcome to Flutter',
      theme: ThemeData(
        // primarySwatch: Colors.green,

        //원하는 형태로 디테일하게 고치고 싶을 경우
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        accentColor: Colors.yellow,
      ),
      home: Scaffold(						
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}