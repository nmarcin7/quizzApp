import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newquizzappp/controllers/user_controller.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  final int? userScore;
  ResultPage({this.userScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              'Result',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold, fontSize: 34),
            ),
            const SizedBox(
              height: 10,
            ),
            const Image(
              width: 100,
              height: 100,
              image: AssetImage('images/trophy.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Congratulations!',
              style: GoogleFonts.openSans(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${context.watch<UserController>().userName}',
              style: GoogleFonts.openSans(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text.rich(
              TextSpan(
                text: 'Your score is ',
                style: TextStyle(fontSize: 18),
                children: [
                  TextSpan(
                    text: '${userScore}',
                    style: GoogleFonts.openSans(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' out of 30'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFF199588),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
                child: Text('Finish'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
