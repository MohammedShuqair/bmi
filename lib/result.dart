import 'package:flutter/material.dart';

class BMIResalt extends StatelessWidget {
  final int height;
  final int weight;
  final int resalt;
  BMIResalt({required this.weight, required this.height, required this.resalt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resalt',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    color: Colors.blue),
                child: Text(
                  'Wight: $weight ',
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                  color: Colors.blue),
              child: Text(
                'Height: $height ',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    color: Colors.blue),
                child: Text(
                  'Resalt: $resalt ',
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
