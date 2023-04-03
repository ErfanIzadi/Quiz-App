import 'package:flutter/material.dart';
import 'package:quiz_app/data/Question.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'constants/Constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSubmited = false;
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQustionsList()[shownQuestionIndex];
    String questionImageIndex =
        getQustionsList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'سوال ${shownQuestionIndex + 1} از ${getQustionsList().length}',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueGrey, Colors.purple],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              Image(
                image: AssetImage('images/$questionImageIndex.png'),
                height: 300.0,
              ),
              SizedBox(
                height: 27.0,
              ),
              Text(
                selectedQuestion!.questionTitle!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30.0,
              ),
              ...List.generate(4, (index) => getOptionsItem(index)),
              if (isFinalAnswerSubmited)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white24,
                    minimumSize: Size(200.0, 55.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ResultScreen(
                          correctAnswer: correctAnswer,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'مشاهده نتایج کوییز',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
          ;
        } else {}
        if (shownQuestionIndex == getQustionsList().length - 1) {
          isFinalAnswerSubmited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQustionsList().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
