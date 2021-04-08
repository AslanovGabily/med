import 'package:flutter/material.dart';
import 'package:med/models/Question.dart';
import 'package:med/widgets/progress_bar.dart';
import 'package:med/widgets/quiz.dart';
import 'package:med/widgets/result.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
// RaisedButton(onPressed: () => setState(() => _questionIndex++))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Шкала оценки рисков')),
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
                : Result(total: _countResult, onClearState: _clearState)
          ],
        ),
      ),
    );
  }
}
