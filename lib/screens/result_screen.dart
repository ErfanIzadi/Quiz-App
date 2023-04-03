import 'package:flutter/material.dart';

import 'package:quiz_app/constants/Constants.dart';
import 'package:quiz_app/home_page.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, this.correctAnswer = 0}) : super(key: key);
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [gradient1, gradient2]),
          ),
        ),
        centerTitle: true,
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.purple[800],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [gradient1, gradient2]),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Image(
                  image: AssetImage('images/cup.png'),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              Text(
                'تعداد پاسخ های صحیح آزمون شما',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  minimumSize: Size(100, 100),
                ),
                child: Text(
                  '$correctAnswer',
                  style: TextStyle(fontSize: 95, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomeWidget()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  minimumSize: Size(100, 100),
                ),
                child: Text(
                  'شروع دوباره آزمون',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[800]),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
