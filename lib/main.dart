import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'modes/question_list.dart';

QuestionList questionList = new QuestionList();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: IqCheck(),
    );
  }
}

class IqCheck extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<IqCheck> {
  int totalScore = 0;
  void buttonFunction({String ans}) {
    setState(() {
      if (ans == questionList.getAnswer()) {
        totalScore++;
      }
      if (questionList.isQnsFinished()) {
        showScore();
      } else {
        questionList.nextQuestion();
      }
    });
  }

  void showScore() {
    Alert(
      context: context,
      title: 'Your score is $totalScore !',
      buttons: [
        DialogButton(
          child: Text("Play Again"),
          onPressed: () {
            totalScore = 0;
            Navigator.pop(context);
          },
        )
      ],
    ).show();
    questionList.resetQns();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0, right: 10.0),
              child: Text(
                "Score: $totalScore",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.green,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              child: Image.asset(questionList.getImageUrl()),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 75.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.green,
                              child: Text(
                                questionList.getOptions()[0],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.amber,
                                ),
                              ),
                              onPressed: () {
                                buttonFunction(
                                    ans: questionList.getOptions()[0]);
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.green,
                              child: Text(
                                questionList.getOptions()[1],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.amber,
                                ),
                              ),
                              onPressed: () {
                                buttonFunction(
                                    ans: questionList.getOptions()[1]);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.green,
                              child: Text(
                                questionList.getOptions()[2],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.amber,
                                ),
                              ),
                              onPressed: () {
                                buttonFunction(
                                    ans: questionList.getOptions()[2]);
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FlatButton(
                              color: Colors.green,
                              child: Text(
                                questionList.getOptions()[3],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.amber,
                                ),
                              ),
                              onPressed: () {
                                buttonFunction(
                                    ans: questionList.getOptions()[3]);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
