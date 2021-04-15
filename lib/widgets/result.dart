import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function onClearState;
  Result({Key key, this.total, this.onClearState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    List<Color> colors = [];
    if (total <= 12) {
      msg = "Низкий уровень рисков: $total!!!";
      colors.add(Color(0xFF053707));
      colors.add(Color(0xFF068E3B));
      img = Image.asset('assets/images/good.png');
    } else if (total == 13 || total == 14) {
      msg = "Приемлемый уровень рисков: $total!!!";
      colors.add(Color(0xFF5C5403));
      colors.add(Color(0xFFD8E10D));
      img = Image.asset('assets/images/normal.png');
    } else if (total > 14) {
      msg = "Чрезмерный уровень рисков: $total!!!";
      colors.add(Color(0xFF37050E));
      colors.add(Color(0xFF8E062A));
      img = Image.asset('assets/images/badboy.png');
    }
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(2, 5))
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: <Color>[colors[0], colors[1]],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(onPressed: onClearState, child: Text('Пройти еще раз?'))
        ],
      ),
    );
  }
}

class ResultMorse extends StatelessWidget {
  int total;
  final Function onClearState;
  ResultMorse({Key key, this.total, this.onClearState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    int tmp = total % 5;
    if (tmp != 0) {
      ++total;
    }

    List<Color> colors = [];
    if (total <= 24) {
      msg = "Нет риска падений: $total!!!";
      colors.add(Color(0xFF053707));
      colors.add(Color(0xFF068E3B));
      img = Image.asset('assets/images/good.png');
    } else if (total > 24 && total <= 50) {
      msg = "Низкая степень риска падений: $total!!!";
      colors.add(Color(0xFF5C5403));
      colors.add(Color(0xFFD8E10D));
      img = Image.asset('assets/images/normal.png');
    } else if (total > 51) {
      msg = "Высокая степень риска падений: $total!!!";
      colors.add(Color(0xFF37050E));
      colors.add(Color(0xFF8E062A));
      img = Image.asset('assets/images/badboy.png');
    }
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(2, 5))
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: <Color>[colors[0], colors[1]],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(onPressed: onClearState, child: Text('Пройти еще раз?'))
        ],
      ),
    );
  }
}

class ResultCaprini extends StatelessWidget {
  int total;
  final Function onClearState;
  ResultCaprini({Key key, this.total, this.onClearState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    int tmp = total % 5;
    if (tmp != 0) {
      ++total;
    }

    List<Color> colors = [];
    if (total <= 2) {
      msg =
          "$total балла . Низкий риск ВТЭО. Ранняя активация. Эластичная компрессия нижних конечностей (18-21 мм рт ст)  !!!";
      colors.add(Color(0xFF053707));
      colors.add(Color(0xFF068E3B));
      img = Image.asset('assets/images/good.png');
    } else if (total == 3 || total == 4) {
      msg =
          "$total балла Умеренный риск ВТЭО. Ранняя активация. Эластичная компрессия нижних конечностей (18-21 мм рт ст)  !!!";

      colors.add(Color(0xFF068E3B));

      colors.add(Color(0xFFD8E10D));
      img = Image.asset('assets/images/good.png');
    } else if (total > 5 && total < 8) {
      msg =
          "$total баллаю Высокий риск ВТЭО. Ранняя активация. Эластичная компрессия нижних конечностей (20-40 мм рт ст)  !!!";
      colors.add(Color(0xFF5C5403));
      colors.add(Color(0xFFD8E10D));
      img = Image.asset('assets/images/normal.png');
    } else if (total > 9) {
      msg =
          "$total балла. Очень высокий риск.Ранняя активация. Эластичная компрессия нижних конечностей (20-40 мм рт ст)  !!!";

      colors.add(Color(0xFF37050E));
      colors.add(Color(0xFF8E062A));
      img = Image.asset('assets/images/badboy.png');
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(2, 5))
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: <Color>[colors[0], colors[1]],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(onPressed: onClearState, child: Text('Пройти еще раз?'))
        ],
      ),
    );
  }
}
