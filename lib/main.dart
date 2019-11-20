import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Makamu Evans",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Elm"),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
  
}

class RandomWordState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

}

class RandomWords extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}