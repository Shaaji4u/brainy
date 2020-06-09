import 'package:brainy/model/question.dart';

// This class will act as our database

class QuestionStore{

// Use this fomart to populate the question LIST
// the correct option should have a 1 in it wrong once should contain 0
List<QuestionModel> _questions = [
  QuestionModel(question: "Who is Code6ix", options: {"Shaaji Alfred": "1", "Shaaji Jumoke":"0", "Shaaji Henry": "0"}),
  QuestionModel(question: "Who is Code6ix", options: {"Shaaji Alfred": "1", "Shaaji Jumoke":"0", "Shaaji Henry": "0"}),
  QuestionModel(question: "Who is Code6ix", options: {"Shaaji Alfred": "1", "Shaaji Jumoke":"0", "Shaaji Henry": "0"}),
  QuestionModel(question: "Who is Code6ix", options: {"Shaaji Alfred": "1", "Shaaji Jumoke":"0", "Shaaji Henry": "0"}),
  QuestionModel(question: "Who is Code6ix", options: {"Shaaji Alfred": "1", "Shaaji Jumoke":"0", "Shaaji Henry": "0"}),
  
];

// this method will be used to retrieve few questions from the question LIST
List<QuestionModel> get question{
  var numQuestion  =0;
  var maxQuestion = 5;
  if(_questions.length<maxQuestion){
    maxQuestion = _questions.length;
  }
  List<QuestionModel> generatedQuestions;
  _questions.shuffle();
  
  while(numQuestion!=maxQuestion+1){
    generatedQuestions.add(_questions[numQuestion]);
    numQuestion++;
  }
return generatedQuestions;
}
}