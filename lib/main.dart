import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'Itemframe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
     home: RandomWord(),
    );
  }
}


class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override

  Widget _buildRow(WordPair pair){  // 반복하여 띄울 행
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont
        ),
      );
  }

  Widget _buildSuggestions(){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        
        //홀수 행은 구분자를 넣어줌
        if(i.isOdd) return Divider();

        //짝수 행은 랜덤한 문자열을 넣어줌
        final index = i ~/ 2; //i를 2로 나누었을 때, 결과의 정수부분은ㄹ 반환함
        if(index >= _suggestions.length){
          //가지고 있는 문자열을 모두 소진하면, 10개를 더 불러온다
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('무한 리스트'),
      ),
      body: _buildSuggestions(),
    );
  }
}