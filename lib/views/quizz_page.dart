import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newquizzappp/views/result_page.dart';
import '../models/question.dart';
import '../widgets/confirm_button.dart';
import '../models/quizz_brain.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  QuizzBrain quizzBrain = QuizzBrain();
  Question question = Question();
  int index = 0;
  int userScore = 0;
  double progressValue = 0.1;

  @override
  void initState() {
    quizzBrain.listOfQuestions.shuffle(Random());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Quizz app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(quizzBrain.listOfQuestions[index].textQuestion!,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  letterSpacing: 0.7,
                  height: 1.4,
                )),
          ),
          Column(
            children: [
              ConfirmButton(
                backgroundButtonColor: Color(0xFF199588),
                onPressed: () {
                  setState(() {
                    progressValue += 0.1;
                  });

                  bool correctAnswer =
                      quizzBrain.listOfQuestions[index].questionAnswer!;

                  if (index == quizzBrain.listOfQuestions.length - 1) {
                    index = quizzBrain.listOfQuestions.length - 1;

                    if (correctAnswer == true) {
                      // correct answer
                      userScore++;
                      progressValue +=
                          1 / quizzBrain.listOfQuestions.length - 1;
                    } else {
                      // wrong answer
                    }
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  userScore: userScore,
                                )));
                  } else {
                    setState(() {
                      index++;
                      if (correctAnswer == true) {
                        //correct answer
                        userScore++;
                      } else {
                        //wrong answer
                      }
                    });
                  }
                },
                text: 'True',
              ),
              ConfirmButton(
                text: 'False',
                backgroundButtonColor: Color(0xFFE62A64),
                onPressed: () {
                  setState(() {
                    progressValue += 0.01;
                  });

                  bool correctAnswer =
                      quizzBrain.listOfQuestions[index].questionAnswer!;

                  if (index == quizzBrain.listOfQuestions.length - 1) {
                    index = quizzBrain.listOfQuestions.length - 1;
                    if (correctAnswer == false) {
                      // correct answer
                      userScore++;
                    } else {
                      // wrong answer
                    }

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  userScore: userScore,
                                )));
                  } else {
                    setState(() {
                      progressValue +=
                          1 / quizzBrain.listOfQuestions.length - 1;
                      index++;
                      if (correctAnswer == false) {
                        // correct answer
                        userScore++;
                      } else {
                        // wrong answer
                      }
                    });
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
