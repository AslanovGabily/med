import 'package:flutter/material.dart';
import 'package:med/pages/home_pages.dart';
import 'package:med/widgets/answerWidget.dart';

class SelectPage extends StatefulWidget {
  SelectPage({Key key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  void _onChangeMorseAnswer(int mark) => setState(() {
        if (mark == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeMorsePage()));
        } else if (mark == 2) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeRiskPage()));
        } else if (mark == 3) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CapriniPage()));
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Рахимов Ахмед Якупович')),
      //appBar: AppBar(title: Text('Шкала падения Морзе Шкала оценки рисков')),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.fullscreen_exit),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 220),
        margin: const EdgeInsets.all(30),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/doc.jpeg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: <Widget>[
            AnswerWidget(
              title: "Шкала падения Морзе",
              mark: 1,
              onChangeAnswer: _onChangeMorseAnswer,
            ),
            AnswerWidget(
              title: "Шкала оценки рисков",
              mark: 2,
              onChangeAnswer: _onChangeMorseAnswer,
            ),
            AnswerWidget(
              title: "Caprini",
              mark: 3,
              onChangeAnswer: _onChangeMorseAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
