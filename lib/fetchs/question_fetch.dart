import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:yeni_proje_frontend/model/question_model.dart';

String url = "http://127.0.0.1:8000/quiz/answers/";

Future<List<QuestionModel>> fetchQuestion() async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonData =
        json.decode(utf8.decode(response.bodyBytes)) as List<dynamic>;
    return jsonData.map((icon) => QuestionModel.fromJson(icon)).toList();
  } else {
    throw Exception("Hata");
  }
}
