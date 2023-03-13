import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key,required this.text,required this.onPressed,});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}