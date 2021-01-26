import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: () {}, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}

