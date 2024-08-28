import 'package:flutter/material.dart';
import 'package:vyder/Authentication/view.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Column(
        children: [
          const Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text("Tony",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Investor at Ripple")
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(color: Colors.grey[300]),
              ),
              const Text(
                  "I've been working in finance for a few years and I'm looking to get more involved in investing. What are the best books for beginners?",
                  style: TextStyle(fontSize: 16))
            ],
          ),
          const SizedBox(height: 30),
          const Text("Answers"),
          const SizedBox(height: 10),
          const Text("8"),
          const SizedBox(height: 30),
          questiomanser("Tony", "Hi", "asset/Depth 4, Frame 0.png"),
          const SizedBox(height: 10),
          questiomanser("Steve", "Hlo", "asset/Depth 4, Frame 0.png"),
        ],
      ),
    );
  }
}
