import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Answer> answers;
  Question({@required this.title, @required this.answers});
}

class Answer {
  final String title;
  final int ball;
  Answer({@required this.title, @required this.ball});
}

class QuestionData {
  final _data = [
    Question(title: 'Продолжительность операции', answers: [
      Answer(title: 'Менее 4 ч', ball: 1),
      Answer(title: '4-6 ч', ball: 2),
      Answer(title: 'Более 6 ч', ball: 4),
    ]),
    Question(title: 'Дополнительные операции', answers: [
      Answer(
          title: 'Одна небольшая/средняя/большая или две/три небольшие',
          ball: 1),
      Answer(title: 'Две дополнительные операции', ball: 2),
      Answer(title: 'Три или более дополнительные операции', ball: 4),
    ]),
    Question(title: 'Индекс массы тела', answers: [
      Answer(title: '18,0-29,9кг/m²', ball: 1),
      Answer(title: '30,0-35,0 кг/m²', ball: 2),
      Answer(title: 'Более 35,0 кг/m²', ball: 4),
    ]),
    Question(title: 'Площадь поверхности тела', answers: [
      Answer(title: 'До 20%', ball: 1),
      Answer(title: 'От 20% до 30%', ball: 2),
      Answer(title: 'От 30% до 40%', ball: 4),
    ]),
    Question(title: 'Риск анестезии', answers: [
      Answer(title: 'ASA I', ball: 1),
      Answer(title: 'ASA II', ball: 2),
      Answer(title: 'ASA III или более', ball: 4),
    ]),
    Question(title: 'Тромбоэмболические явления', answers: [
      Answer(title: 'Один предрасполагающий фактор', ball: 1),
      Answer(title: 'Два предрасполагающий фактор', ball: 2),
      Answer(title: 'Три и более предрасполагающих факторов', ball: 4),
    ]),
  ];

  List<Question> get questions => [..._data];
}
