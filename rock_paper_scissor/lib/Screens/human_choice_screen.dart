import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/Logic/result_logic.dart';
import 'package:rock_paper_scissor/Screens/result_screen.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({super.key});

  @override
  State<ChoiceScreen> createState() => ChoiceScreenState();
}

class ChoiceScreenState extends State<ChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectedChoice = "Rock";
                        result();
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ResultScreen(),
                        ));
                      },
                      child: Image.asset(
                        "assets/images/rock.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectedChoice = "Paper";
                        result();
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ResultScreen(),
                        ));
                      },
                      child: Image.asset(
                        "assets/images/paper.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectedChoice = "Scissor";
                        result();
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ResultScreen(),
                        ));
                      },
                      child: Image.asset(
                        "assets/images/scissor.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Make Your Choice",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
