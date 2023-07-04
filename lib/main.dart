import 'package:bmi_tt9/constans.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: background,
          appBarTheme: AppBarTheme(
              color: Colors.transparent, elevation: 0, centerTitle: true),
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(primary: Colors.red, secondary: Colors.yellowAccent)),
      // theme: ThemeData.dark().copyWith(
      //   colorScheme: Theme.of(context)
      //       .colorScheme
      //       .copyWith(secondary: Colors.lightGreen),
      //   appBarTheme: AppBarTheme(
      //     elevation: 0,
      //     backgroundColor: Colors.grey[900],
      //   ),
      //   scaffoldBackgroundColor: Colors.grey[900],
      // ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('hello'),
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData().copyWith(
      //       colorScheme: Theme.of(context)
      //           .colorScheme
      //           .copyWith(secondary: Colors.pinkAccent)),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}
