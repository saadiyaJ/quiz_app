import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

            Image.asset(
              'assets/the_office.png',
              width: 300,
              height: 300,
            ),

          const SizedBox(
            height: 30,
          ),
           Text("Let's get quizzed on The Office!",
              style:
              GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 18,)
            ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed:
              startQuiz,

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 15,fontFamily: "poppins",fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
