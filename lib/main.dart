import 'package:flutter/material.dart';

import 'quize_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
 

  List<Icon> scoreKepper = [];
/*
  List<String> question = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];
*/


  List<bool> correctanswer = [false, true, true];


/*
  List<Question> questionBank = [

  
  ];
  */

QuizBrain quizbrain = QuizBrain();

  int questionnumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              
              child: Text(
                quizbrain.getQuizbankQuestion(questionnumber),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                
                if (quizbrain.getQuizbankAnswer(questionnumber) == true) {
                  questionnumber++;
                  setState(
                    () {
                      
                      scoreKepper.add(
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    },
                  );

                  print("answer is correct");
                } else {
                  questionnumber++;
                  setState(
                    () {
                      scoreKepper.add(
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    },
                  );

                  print('anwer is incorrecr');
                }
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (quizbrain.getQuizbankAnswer(questionnumber) == false) {
                    questionnumber++;
                    setState(
                      () {
                        scoreKepper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      },
                    );

                    print("answer is correct");
                  } else {
                    questionnumber++;
                    setState(
                      () {
                        scoreKepper.add(
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      },
                    );

                    questionnumber++;
                  }
                }),
          ),
        ),
        Row(
          children: scoreKepper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,*/
