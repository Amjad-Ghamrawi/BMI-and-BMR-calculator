import 'package:flutter/material.dart';
import 'weightAndHeight.dart';
class Gender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select your gender:',
            style: TextStyle(fontSize: 20),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeightHeight(gender: 'Male'),
                ),
              );
            },
            child: Image.asset(
              'images/male.png', // Replace with your male icon asset path
              width: 100,
              height: 100,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeightHeight(gender: 'Female'),
                ),
              );
            },
            child: Image.asset(
              'images/female.jpg', // Replace with your female icon asset path
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
