import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const NumberTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
        ],
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFF02343F), width: 2),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFF02343F), width: 2),
          ),
        ),
      ),
    );
  }
}
