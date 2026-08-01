import 'package:bmi/screens/calculate_page.dart';
import 'package:bmi/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EDCC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF02343F),
        foregroundColor: const Color(0xFFF0EDCC),
        leading: const Icon(Icons.calculate),
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the BMI Calculator!',
              style: TextStyle(
                fontSize: 23,
                color: Color(0xFF02343F),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 50),
            MyButton(
              'Calculate BMI',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>  CalculatePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}