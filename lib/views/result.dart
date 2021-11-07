import 'package:flutter/material.dart';
import 'package:clock_app/views/question_top.dart';

class Result extends StatelessWidget {
  final numberOfCorrectAnswer;

  Result({@required this.numberOfCorrectAnswer});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('結果'),
          leading: Icon(Icons.book),
          backgroundColor: Color(0xFFe91e63),
        ),
        backgroundColor: Color(0xFFF5F5F6),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '10問中$numberOfCorrectAnswer問正解です',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              resultWords(numberOfCorrectAnswer),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 50.0,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Start(),
                    //   ),
                    // );
                  },
                  child: Text(
                    '今日もおつかれさま！',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Color(0xFFccdb37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

Widget resultWords(int num) {
  if (num < 6) {
    return Center(
      child: Text(
        'もっと勉強しましょう',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
    );
  }
  if (num < 9) {
    return Center(
      child: Text(
        'おしい！あと一息',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
    );
  } else {
    return Center(
        child: Text(
          'よくできました',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ));
  }
}