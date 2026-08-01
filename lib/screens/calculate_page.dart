import 'package:bmi/widgets/button.dart';
import 'package:bmi/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:bmi/utils/bmi_calculate.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double? bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EDCC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF02343F),
        foregroundColor: const Color(0xFFF0EDCC),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            Padding(padding: EdgeInsets.all(50)),

            Image.asset(
              'lib/assets/body.png',
              width: 150,
              color: Color.fromARGB(255, 1, 36, 44),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                NumberTextField(
                  controller: weightController,
                  hintText: "Enter your weight",
                ),
                Text('Kg', style: TextStyle(fontWeight: FontWeight(700))),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 7,
              children: [
                NumberTextField(
                  controller: heightController,
                  hintText: "Enter your height",
                ),
                Text('Cm', style: TextStyle(fontWeight: FontWeight(700))),
              ],
            ),

            MyButton('Calculate', () {
              double? weight = double.tryParse(weightController.text);
              double? height = double.tryParse(heightController.text);

              if (weight == null || height == null) {
                return;
              }

              setState(() {
                bmi = BmiCalculator.calculate(weight, height);
              });
            }),

            if (bmi != null)
              Column(
                children: [
                  Text(
                    "BMI: ${bmi!.toStringAsFixed(1)}",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 36, 44)
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    BmiCalculator.getResult(bmi!),
                    style:  TextStyle(
                      fontSize: 22,
                       color: BmiCalculator.getColor(bmi!),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
