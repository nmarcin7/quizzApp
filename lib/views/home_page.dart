import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newquizzappp/controllers/user_controller.dart';
import 'package:newquizzappp/views/quizz_page.dart';
import 'package:provider/provider.dart';
import 'dart:io' show Platform;

class HomePage extends StatelessWidget {
  final TextEditingController _name = TextEditingController();

  void clearTextField() {
    _name.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text(
              'Quizz game',
              style: GoogleFonts.acme(
                  color: Color(0xFF37E9BB),
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Please enter your name and lets play!',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFDF2960),
                  ),
                ),
                labelText: 'Your name...',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF81BEE9),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              if (_name.text.isNotEmpty) {
                context.read<UserController>().saveUserName(_name.text);

                Navigator.pushNamed(context, 'countryPage');
                clearTextField();
              } else {
                if (!Platform.isAndroid) {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text('Wrong username'),
                      content: Text('The user nickname cannot be empty!'),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('ok'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Wrong username'),
                      content: Text('The user nickname cannot be empty!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Ok'),
                        ),
                      ],
                    ),
                  );
                }
              }
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Container(
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFDF2960)),
              child: Center(
                child: Text(
                  'Play now',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
