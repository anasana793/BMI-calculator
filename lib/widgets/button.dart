import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
   final VoidCallback onPressed;

  const MyButton(this.label,this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF02343F),
          foregroundColor: Color(0xFFF0EDCC),
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5), // Rounded corners
    ),
      ),
      onPressed: onPressed, 
      child: Text(
        label,
    ));
  }
}