import 'package:flutter/material.dart';
import 'package:med/models/Question.dart';
import 'package:med/widgets/progress_bar.dart';
import 'package:med/widgets/quiz.dart';
import 'package:med/widgets/result.dart';

class HomeMorsePage extends StatefulWidget {
  HomeMorsePage({Key key}) : super(key: key);

  @override
  _HomeMorsePageState createState() => _HomeMorsePageState();
}

class _HomeMorsePageState extends State<HomeMorsePage> {
  final MorseScaleDate data = MorseScaleDate();
  int _countResult = 0;
  int _questionIndex = 0;
  var _icon = Icons.brightness_1;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _countResult = 0;
        _questionIndex = 0;
        _icons = [];
      });

  void _onChangeAnswer(int mark) => setState(() {
        if (mark < 15) {
          _icons.add(Icon(_icon, color: Colors.green));
          _countResult += mark;
        } else if (mark >= 15) {
          _icons.add(Icon(_icon, color: Colors.red));
          _countResult += mark;
        }
        _questionIndex++;
      });

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

// RaisedButton(onPressed: () => setState(() => _questionIndex++))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шкала падения Морзе')),
      //appBar: AppBar(title: Text('Шкала падения Морзе Шкала оценки рисков')),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.fullscreen_exit),
        onPressed: () {
          goBack(context);
        },
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            color: const Color(0xff2a375a),
            image: DecorationImage(
              image: AssetImage("assets/images/morse.jpg"),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: <Widget>[
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangaAnswer: _onChangeAnswer,
                  )
                : ResultMorse(total: _countResult, onClearState: _clearState)
          ],
        ),
      ),
    );
  }
}

class HomeRiskPage extends StatefulWidget {
  HomeRiskPage({Key key}) : super(key: key);

  @override
  _HomeRiskPageState createState() => _HomeRiskPageState();
}

class _HomeRiskPageState extends State<HomeRiskPage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;
  var _icon = Icons.brightness_1;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _countResult = 0;
        _questionIndex = 0;
        _icons = [];
      });

  void _onChangeAnswer(int mark) => setState(() {
        if (mark == 1) {
          _icons.add(Icon(_icon, color: Colors.green));
          _countResult++;
        } else if (mark == 2) {
          _icons.add(Icon(_icon, color: Colors.yellow));
          _countResult += 2;
        } else if (mark == 4) {
          _icons.add(Icon(_icon, color: Colors.red));
          _countResult += 4;
        }
        _questionIndex++;
      });

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

// RaisedButton(onPressed: () => setState(() => _questionIndex++))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шкала оценки рисков')),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.fullscreen_exit),
        onPressed: () {
          goBack(context);
        },
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            color: const Color(0xff2a375a),
            image: DecorationImage(
              image: AssetImage("assets/images/emb.jpg"),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: <Widget>[
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangaAnswer: _onChangeAnswer,
                  )
                : ResultMorse(total: _countResult, onClearState: _clearState)
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MorseScaleDate data = MorseScaleDate();
  int _countResult = 0;
  int _questionIndex = 0;
  var _icon = Icons.brightness_1;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _countResult = 0;
        _questionIndex = 0;
        _icons = [];
      });

  void _onChangeAnswer(int mark) => setState(() {
        if (mark == 1) {
          _icons.add(Icon(_icon, color: Colors.green));
          _countResult++;
        } else if (mark == 2) {
          _icons.add(Icon(_icon, color: Colors.yellow));
          _countResult += 2;
        } else if (mark == 4) {
          _icons.add(Icon(_icon, color: Colors.red));
          _countResult += 4;
        }
        _questionIndex++;
      });

  void _onChangeMorseAnswer(int mark) => setState(() {
        if (mark < 15) {
          _icons.add(Icon(_icon, color: Colors.green));
          _countResult += mark;
        } else if (mark >= 15) {
          _icons.add(Icon(_icon, color: Colors.red));
          _countResult += mark;
        }
        _questionIndex++;
      });

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

// RaisedButton(onPressed: () => setState(() => _questionIndex++))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шкала падения Морзе')),
      //appBar: AppBar(title: Text('Шкала падения Морзе Шкала оценки рисков')),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.fullscreen_exit),
        onPressed: () {
          goBack(context);
        },
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            color: const Color(0xff2a375a),
            image: DecorationImage(
              image: AssetImage("assets/images/emb.jpg"),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: <Widget>[
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangaAnswer: _onChangeMorseAnswer,
                  )
                : ResultMorse(total: _countResult, onClearState: _clearState)
          ],
        ),
      ),
    );
  }
}
