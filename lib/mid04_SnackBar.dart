import 'package:flutter/material.dart';

void main() => runApp(MySnackBar());

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Builder(builder: (context) => Center( //새로운 별도의 context를 만들고 그 안에 화면을 만듦
          child: RaisedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('메일이 삭제되었습니다.'),
                action: SnackBarAction(label: '취소', onPressed: (){
                  //눌렀을 때 처리
                })
              );
              Scaffold.of(context).showSnackBar(snackBar);
            }, 
            child: Text('Show Snackbar')),)
        )
      ),
    );
  }
}