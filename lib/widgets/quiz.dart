import 'package:flutter/material.dart';

import 'answerWidget.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangaAnswer;
  const Quiz({Key key, this.index, this.questionData, this.onChangaAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          margin: const EdgeInsets.all(30),
          child: Text(
            questionData.questions[index].title,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        ...questionData.questions[index].answers.map(
          (element) => AnswerWidget(
            title: element.title,
            mark: element.ball,
            onChangeAnswer: onChangaAnswer,
          ),
        ),
      ],
    );
  }
}
