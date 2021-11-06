import 'package:flutter/material.dart';
import 'package:motivation_trigger/screens/result.dart';

class Question extends StatefulWidget {
  static const String id = 'question';

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  // 問題
  List<String> questions = [
    '第1問...',
    '第2問...',
    '第3問...',
    '第4問...',
    '第5問...',
    '第6問...',
    '第7問...',
    '第8問...',
    '第9問...',
    '第10問...',
  ];

  List<int> answers = [
    1,
    2,
    3,
    4,
    2,
    3,
    1,
    4,
    1,
    4,
  ];

  // current  number
  int questionNumber = 0;
  // correct number
  int numberOfCorrectAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("問題"),
        leading: Icon(Icons.book),
        backgroundColor: Color(0xFFe91e63),
      ),
      backgroundColor: Color(0xFFF5F5F6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questions[questionNumber],
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ),
          OptionButton(
              text: 'option1',
              onPress: () {
                int correctAnswer = answers[questionNumber];
                if (correctAnswer == 1) {
                  setState(() {
                    numberOfCorrectAnswer++;
                  });
                }
                if (questionNumber + 1 < questions.length) {
                  setState(() {
                    questionNumber++;
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        numberOfCorrectAnswer: numberOfCorrectAnswer,),
                    ),
                  );
                }
              }),
          OptionButton(
              text: 'option2',
              onPress: () {
                int correctAnswer = answers[questionNumber];
                if (correctAnswer == 2) {
                  setState(() {
                    numberOfCorrectAnswer++;
                  });
                }
                if (questionNumber + 1 < questions.length) {
                  setState(() {
                    questionNumber++;
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        numberOfCorrectAnswer: numberOfCorrectAnswer,),
                    ),
                  );
                }
              }),
          OptionButton(
              text: 'option3',
              onPress: () {
                int correctAnswer = answers[questionNumber];
                if (correctAnswer == 3) {
                  setState(() {
                    numberOfCorrectAnswer++;
                  });
                }
                if (questionNumber + 1 < questions.length) {
                  setState(() {
                    questionNumber++;
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        numberOfCorrectAnswer: numberOfCorrectAnswer,),
                    ),
                  );
                }
              }),
          OptionButton(
              text: 'option4',
              onPress: () {
                int correctAnswer = answers[questionNumber];
                if (correctAnswer == 4) {
                  setState(() {
                    numberOfCorrectAnswer++;
                  });
                }
                if (questionNumber + 1 < questions.length) {
                  setState(() {
                    questionNumber++;
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        numberOfCorrectAnswer: numberOfCorrectAnswer,),
                    ),
                  );
                }
              }),
        ],
      ),
    ));
  }
}

class OptionButton extends StatelessWidget {
  final Function() onPress;
  final String text;

  OptionButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFccdb37),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
