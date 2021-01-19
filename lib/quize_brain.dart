import 'question.dart';


class QuizBrain{

  List<Question> _questionBank = [
    Question( q:'You can lead a cow down stairs but not up stairs' , a:true ),
    Question( q:'Approximately one quarter of human bones are in the feet', a:false ),
    Question( q:'A slug\'s blood is green' , a:false ),
    Question( q:'You can lead a cow down stairs but not up stairs' , a:true ),
    Question( q:'Approximately one quarter of human bones are in the feet', a:false ),
    Question( q:'A slug\'s blood is green' , a:false ),
    Question( q:'You can lead a cow down stairs but not up stairs' , a:true ),
    Question( q:'Approximately one quarter of human bones are in the feet', a:false ),
    Question( q:'A slug\'s blood is green' , a:false ),
    Question( q:'You can lead a cow down stairs but not up stairs' , a:true ),
    Question( q:'Approximately one quarter of human bones are in the feet', a:false ),
    Question( q:'A slug\'s blood is green' , a:false ),
    Question( q:'You can lead a cow down stairs but not up stairs' , a:true ),
    Question( q:'Approximately one quarter of human bones are in the feet', a:false ),
    Question( q:'A slug\'s blood is green' , a:false ),
  ];


  String getQuizbankQuestion(int questionnumber){
    return _questionBank[questionnumber].questionText;
  }

    bool getQuizbankAnswer(int questionnumber){
    return _questionBank[questionnumber].questionAnswer;
  }
}