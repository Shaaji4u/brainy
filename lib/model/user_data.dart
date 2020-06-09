class User {
  String username;
  double totalScore = 0.0;
  double wrongScore = 0.0;
  double correctScore = 0.0;

  User({this.username, this.totalScore, this.correctScore, this.wrongScore});

  User.fromJsonMap(Map<String, dynamic> user){
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

  void setCorrectScore(double score){
    this.correctScore = score;
  }
void setWrongScore(double score){
    this.wrongScore = score;
  }
  void setTotalScore(double score){
    this.totalScore = score;
  }
}