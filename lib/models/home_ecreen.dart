import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key});
  final void Function() onStartButtonPressed;

  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 249, 252),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // asset
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 190,
            ),
            //const Text("Quiz App",
            //style: TextStyle(
            // color: Colors.white,
            //fontSize: 32,
            //fontWeight: FontWeight.bold,
            //letterSpacing: 1.5)),
            ElevatedButton(
              onPressed: () {
                onStartButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 81, 7, 255),
                  foregroundColor: Color.fromARGB(255, 255, 251, 251)),
              child: const Text(
                "Quize Başla",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
