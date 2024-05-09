import 'package:flutter/material.dart';
import 'package:yeni_proje_frontend/fetchs/question_fetch.dart';
import 'package:yeni_proje_frontend/widgets/question_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                  future: fetchQuestion(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    } else if (snapshot.hasData) {
                      final question = snapshot.data!;
                      final answer = snapshot.data!;
                      return ListView.builder(
                          itemCount: question.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return QuestionCardWidget(
                                question: question[index].question,
                                answer1: answer[index].answer1,
                                answer2: answer[index].answer2,
                                answer3: answer[index].answer3,
                                answer4: answer[index].answer4,
                                
                                );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
