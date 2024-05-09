import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionCardWidget extends StatelessWidget {
  const QuestionCardWidget(
      {super.key,
      required this.question,
      required this.answer1,
      required this.answer2,
      required this.answer3,
      required this.answer4});
  final String question;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: _SampleCard(
              cardName: question,
              answer1: answer1,
              answer2: answer2,
              answer3: answer3,
              answer4: answer4,
            ),
          ),
          Card(
            child: _SampleCard(
              cardName: question,
              answer1: answer1,
              answer2: answer2,
              answer3: answer3,
              answer4: answer4,
            ),
          ),
          Card(
            child: _SampleCard(
              cardName: question,
              answer1: answer1,
              answer2: answer2,
              answer3: answer3,
              answer4: answer4,
            ),
          ),
        ],
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard(
      {required this.cardName,
      required this.answer1,
      required this.answer2,
      required this.answer3,
      required this.answer4});
  final String cardName;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 120,
      child: Expanded(
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [Text(cardName)],
            )),
            Expanded(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Doğru Cevap");
                    },
                    child: Text(answer1),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                        print("Yanlış Cevap");
                    },
                    child: Text(answer2),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                        print("Yanlış Cevap");
                    },
                    child: Text(answer3),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                       print("Yanlış Cevap");
                    },
                    child: Text(answer4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
