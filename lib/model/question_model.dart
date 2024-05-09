class QuestionModel {
  final String question;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;

  QuestionModel(
      {required this.question,
      required this.answer1,
      required this.answer2,
      required this.answer3,
      required this.answer4});

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
        question: json["question"],
        answer1: json["answer1"],
        answer2: json["answer2"],
        answer3: json["answer3"],
        answer4: json["answer4"]
        );
  }
}
