import 'package:flutter/material.dart';

class QuizResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int incorrectAnswers;
  final VoidCallback onReturnToHomePressed;

  QuizResultScreen({
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.onReturnToHomePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quiz Sonuçları",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Doğru Cevaplar: $correctAnswers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Text(
              "Yanlış Cevaplar: $incorrectAnswers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: onReturnToHomePressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: const Text(
                "Ana Sayfaya Dön",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
