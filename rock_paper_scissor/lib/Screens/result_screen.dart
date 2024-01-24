import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/Logic/result_logic.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(child: Image.asset(selectImage)),
              Expanded(child: Image.asset(aiSelectImage))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            resultText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Play Again",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
