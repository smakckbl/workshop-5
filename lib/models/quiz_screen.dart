import 'package:flutter/material.dart';
import 'package:introapp2/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.chooseAnswer});
  final void Function(String answer) chooseAnswer;

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

// navigator
class _QuizState extends State<QuizScreen> {
  int selectedQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > selectedQuestionIndex)
        selectedQuestionIndex++;
      else {
        // Quizi bitirme
      }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(questions[selectedQuestionIndex].question),
              ...questions[selectedQuestionIndex].answers.map((answer) {
                return ElevatedButton(
                    onPressed: () {
                      widget.chooseAnswer(answer);
                      changeQuestion();
                    },
                    child: Text(answer));
              })
            ],
          ),
        ),
      ),
    );
  }
}
