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

class CapriniDate {
  final _data = [
    Question(title: '1. Возраст 41-60 лет?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '2. Отек нижних конечностей?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '3. ИМТ > 25 кг/м2?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title: '4. Малое Хирургическое вмешательство (менее 60 мин)?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '5. Сепсис (давностью до 1 месяца)?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title:
            '6. Серьезное заболевание лёгких ( в т. ч. пневмония давностью до 1 месяца)?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '7. Прием оральных контрацептивов?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '8. Гормонозаместительная терапия?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title: '9. Беременность и послеродовой период ( до 1 мес)?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(
        title:
            '10. В анамнезе: необъяснимые мертворождения, выкидыши (>2)преждевременные роды с токсикозом или задержка внутриутробного развития?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '11. Острый инфаркт миокарда?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title:
            '12. Хроническая сердечная недостаточность ( давностью до 1 месяца)?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(
        title: '13. Постельный режим у нехирургического пациента?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(
        title: '14. Воспалительные заболевания толстой кишки в анамнезе?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(
        title:
            '15. Большое  хирургическое вмешательство давностью до 1 месяца в анамнезе?',
        answers: [
          Answer(title: 'да', ball: 1),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(
        title: '16. Большое хирургическое вмешательство (более 60мин)?',
        answers: [
          Answer(title: 'да', ball: 2),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '17. ХОБЛ?', answers: [
      Answer(title: 'да', ball: 1),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '18. Артроскопическая хирургия?', answers: [
      Answer(title: 'да', ball: 2),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '19. Злокачественное новообразование?', answers: [
      Answer(title: 'да', ball: 2),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title: '20. Лапароскопическое вмешательство (более 60 мин)?',
        answers: [
          Answer(title: 'да', ball: 2),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '21. Постельный режим более 72 часов?', answers: [
      Answer(title: 'да', ball: 2),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title: '22. Иммобилизация конечности (давностью до 1 месяца)?',
        answers: [
          Answer(title: 'да', ball: 2),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '23. Катетеризация центральных вен?', answers: [
      Answer(title: 'да', ball: 2),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '24. Личный анамнез ВТЭО?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '25. Семейный анамнез ВТЭО?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '26. Мутация типа Лейден?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '27. Мутация протромбина 2021ОА?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '28. Гипергомоцистеинемия?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '29. Гепарин-индуцированная тромбоцитопения?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '30. Повышенный уровень антител к кардиолепину?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '31. Волчаночный антикоагулянт?', answers: [
      Answer(title: 'да', ball: 3),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(title: '32. Инсульт (давностью до 1 месяца)?', answers: [
      Answer(title: 'да', ball: 5),
      Answer(title: 'нет', ball: 0),
    ]),
    Question(
        title: '32. Множественная травма (давностью до 1 месяца)?',
        answers: [
          Answer(title: 'да', ball: 5),
          Answer(title: 'нет', ball: 0),
        ]),
    Question(title: '32. Эндопротезирование крупных суставов?', answers: [
      Answer(title: 'да', ball: 5),
      Answer(title: 'нет', ball: 0),
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
