import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Color buttonColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.maxFinite,
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
