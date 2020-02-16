import 'package:iq_check/modes/questions.dart';

class QuestionList {
  int _questionsNumber = 0;

  List<Question> questions = [
    Question(
        imageName: "assets/gdr.jpg",
        answer: "Gold D Roger",
        o1: "Douglas Bullet",
        o2: "Fujitora",
        o3: "Rayleigh",
        o4: "Gold D Roger"),
    Question(
        imageName: "assets/bb.jpg",
        answer: "Black Beard",
        o1: "Douglas Bullet",
        o2: "Fujitora",
        o3: "Rayleigh",
        o4: "Black Beard"),
    Question(
        imageName: "assets/ace.jpg",
        answer: "Firefist Ace",
        o1: "Douglas Bullet",
        o2: "Firefist Ace",
        o3: "Rayleigh",
        o4: "Gold D Roger"),
    Question(
        imageName: "assets/k.jpg",
        answer: "Kaido",
        o1: "Douglas Bullet",
        o2: "Kaido",
        o3: "Rayleigh",
        o4: "Gold D Roger"),
    Question(
        imageName: "assets/kd.jpg",
        answer: "KaidoD",
        o1: "Douglas Bullet",
        o2: "Fujitora",
        o3: "KaidoD",
        o4: "Gold D Roger"),
  ];

  //get image fro the question list
  String getImageUrl() {
    return questions[_questionsNumber].imageName;
  }

  void nextQuestion() {
    _questionsNumber++;
  }

  List getOptions() {
    List<String> options = [
      questions[_questionsNumber].o1,
      questions[_questionsNumber].o2,
      questions[_questionsNumber].o3,
      questions[_questionsNumber].o4,
    ];
    return options;
  }

  String getAnswer() {
    return questions[_questionsNumber].answer;
  }

  bool isQnsFinished() {
    if (_questionsNumber > questions.length - 2) {
      return true;
    } else {
      return false;
    }
  }

  void resetQns() {
    _questionsNumber = 0;
  }
}
