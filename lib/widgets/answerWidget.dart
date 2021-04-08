import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final mark;
  final Function onChangeAnswer;

  const AnswerWidget({this.title, this.mark, this.onChangeAnswer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(mark),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
        width: double.infinity,
        decoration: BoxDecoration(
          //backgroundBlendMode:,
          boxShadow: [
            BoxShadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0)),
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF5337ff),
              Color(0xFF8131ff),
              Color(0xFFbd277ff),
            ],
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
