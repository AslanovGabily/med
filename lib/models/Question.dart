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

class MorseScaleDate {
  final _data = [
    Question(title: '1. Падал ли пациент в последние 3 мес?', answers: [
      Answer(title: 'да', ball: 25),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '2. Есть ли сопутствующее заболевание?', answers: [
      Answer(title: 'да', ball: 15),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '3. Самостоятельность при ходьбе', answers: [
      Answer(
          title:
              'ходит сам (даже если при помощи кого-то), или строгий постельный режим, неподвижно лежит',
          ball: 0),
      Answer(title: 'костыли/ходунки/трость', ball: 14),
      Answer(title: 'опирается о мебель или стены для поддержки', ball: 30),
    ]),
    Question(
        title:
            '4. Принимает внутривенное вливание/принимает гепарин, фраксипарин',
        answers: [
          Answer(title: 'да', ball: 25),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '5. Походка', answers: [
      Answer(title: 'нормальная (ходит свободно)', ball: 0),
      Answer(
          title:
              'слегка несвободная (ходит с остановками, шаги короткие, иногда с задержкой)',
          ball: 10),
      Answer(
          title: 'нарушения (не может встать, ходит опираясь, смотрит вниз)',
          ball: 20),
    ]),
    Question(title: '6. Психическое состояние', answers: [
      Answer(title: 'знает о своей способности двигаться', ball: 0),
      Answer(
          title: 'не знает или забывает, что нужна помощь при движении',
          ball: 15),
    ]),
  ];
  List<Question> get questions => [..._data];
}
