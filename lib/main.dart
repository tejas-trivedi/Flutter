import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {
      'questionText': 'Which is your favorite web dev framework?',
      'answers': [
        {'text': 'Django', 'score': 25},
        {'text': 'React-Native', 'score': 15},
        {'text': 'Angular', 'score': 10},
        {'text': 'Flutter', 'score': 20}
      ],
    },
    {
      'questionText': 'What\'s your favorite OS?',
      'answers': [
        {'text': 'Linux', 'score': 35},
        {'text': 'MacOS', 'score': 25},
        {'text': 'Windows', 'score': 20}
      ],
    },
    {
      'questionText': 'Which is your favorite language',
      'answers': [
        {'text': 'Python', 'score': 25},
        {'text': 'Java', 'score': 10},
        {'text': 'C++', 'score': 20},
        {'text': 'Dart', 'score': 15}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0; 
    });

  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('Hey');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.black87,
          shadowColor: Colors.red,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
      theme: ThemeData(
          //fontFamily: 'Nunito',
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.black87,
          ),
          brightness: Brightness.dark,
          textTheme: TextTheme(
            /*body1: TextStyle(fontSize: 18),
            body2: TextStyle(fontSize: 16),
            button: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
            headline: TextStyle(fontWeight: FontWeight.bold),
            subhead: TextStyle(color: Colors.lightGreen),*/
          ),
        ),
    );
  }
}
