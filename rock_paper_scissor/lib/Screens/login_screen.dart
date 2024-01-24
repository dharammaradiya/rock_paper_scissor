import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rock_paper_scissor/Screens/human_choice_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     // Image.network(
      //     //     "https://img.lovepik.com/element/45009/2341.png_860.png")
      //     Image.asset("assets/images/login.png"),
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/login.png'),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChoiceScreen(),
                ));
              },
              child: const Text("Play With Ai")),
          TextButton(
              onPressed: () {
                Get.snackbar("Rules :", "scissors wins against paper",
                    snackPosition: SnackPosition.BOTTOM,
                    messageText: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rock wins against scissors"),
                        Text("Paper wins against rock"),
                        Text("Scissors wins against paper"),
                      ],
                    ));

                // showModalBottomSheet(
                //   elevation: 2,
                //   context: context,
                //   builder: (context) {
                //     return SizedBox(
                //       width: double.infinity,
                //       height: 300,
                //       child: Column(
                //         children: [
                //           Text("Rock wins against scissors"),
                //           Text("Paper wins against rock"),
                //           Text("Scissors wins against paper"),
                //         ],
                //       ),
                //     );
                //   },
                // );
              },
              child: const Text("Instruction"))
        ],
      ),
    );
  }
}
