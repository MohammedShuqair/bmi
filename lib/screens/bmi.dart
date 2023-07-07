import 'package:bmi_tt9/bmi_brain.dart';
import 'package:bmi_tt9/widgets.dart';
import 'package:flutter/material.dart';

import 'result.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  BMIBrain bmiBrain = BMIBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text(
          'IBM Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                      child: Gender.male(
                    onTap: () {
                      setState(() {
                        bmiBrain.isMale = true;
                      });
                    },
                    isMale: bmiBrain.isMale ?? false,
                  )),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Gender.female(
                    onTap: () {
                      setState(() {
                        bmiBrain.isMale = false;
                      });
                    },
                    isMale: bmiBrain.isMale == null ? false : !bmiBrain.isMale!,
                  )),
                ],
              ),
            ),
          ),
          Expanded(
              child: CustomSlider(
            height: bmiBrain.height,
            onChange: (double value) {
              setState(() {
                bmiBrain.height = value;
              });
            },
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                      child: Details(
                    title: 'WEIGHT',
                    value: bmiBrain.weight,
                    onTapIncrement: () {
                      setState(() {
                        bmiBrain.incWeight();
                      });
                    },
                    onTapDecrement: () {
                      setState(() {
                        bmiBrain.decWeight();
                      });
                    },
                  )),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Details(
                    title: 'AGE',
                    value: bmiBrain.age,
                    onTapIncrement: () {
                      setState(() {
                        bmiBrain.incAge();
                      });
                    },
                    onTapDecrement: () {
                      setState(() {
                        bmiBrain.decAge();
                      });
                    },
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BMIResult(
                result: bmiBrain.handelResult(),
              ),
            ),
          );
        },
        hint: 'Calculate',
      ),
    );
  }
}
