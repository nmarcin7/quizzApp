import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundButtonColor;
  final String? text;

  ConfirmButton({this.onPressed, this.backgroundButtonColor, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            backgroundButtonColor,
          ),
        ),
        onPressed: onPressed,
        child: Text(text!),
      ),
    );
  }
}
