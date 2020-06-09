import 'package:brainy/model/question.dart';

class UserBoard {
  String username;
  double totalScore = 0.0;
  double wrongScore = 0.0;
  double correctScore = 0.0;
  List<QuestionModel> _userQuestions;

  UserBoard({this.username});
  UserBoard.fromJsonMap(Map<String, dynamic> user){
    this.correctScore = user['correctScore'];
    this.username = user['username'];
    this.totalScore = user['totalScore'];
    this.wrongScore = user['wrongScore']; 
  }
  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    map['username'] = this.username;
    map['correctScore'] = this.correctScore;
    map['wrongScore'] = this.wrongScore;
    map['totalScore'] = this.totalScore;
    return map;
  }

  get userQuestions{
    return _userQuestions;
  }

  void setCorrectScore(double score){
    this.correctScore += score;
  }
void setWrongScore(double score){
    this.wrongScore += score;
  }
  void setTotalScore(double score){
    this.totalScore += score;
  }
  set userQuestions(List<QuestionModel> questions){
  this._userQuestions = questions;
}

}


