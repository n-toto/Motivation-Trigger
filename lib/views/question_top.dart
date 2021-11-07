import 'package:flutter/material.dart';
import 'package:clock_app/views/question.dart';

class Start extends StatelessWidget {
  static const String id = 'start_page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Motivation Trigger"),
          leading: Icon(Icons.book),
          backgroundColor: Color(0xFF444974),
        ),
        backgroundColor: Color(0xFFF5F5F6),
        body: SafeArea(
          child: StartPage(),
        ),
      ),
      routes: {
        Question.id : (context) => Question(),
        // RegistrationScreen.id : (context) => RegistrationScreen(),
        // ChatScreen.id : (context) => ChatScreen(),
      },
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.book),
          SizedBox(
            height: 55.0,
          ),
          Center(
            child: Text(
              "スキマ時間に復習しよう",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Color(0xFF444974),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Question.id,
                );
              },
              child: Text(
                "今日の問題",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF748EF6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}