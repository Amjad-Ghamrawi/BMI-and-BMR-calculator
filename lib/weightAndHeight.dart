import 'package:flutter/material.dart';
import 'result.dart';
class WeightHeight extends StatefulWidget {
  final String gender;

  WeightHeight({required this.gender});

  @override
  _WeightHeightState createState() => _WeightHeightState();
}

class _WeightHeightState extends State<WeightHeight> {
  int weight = 70;
  int height = 170;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.gender} Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enter your weight and height and age:',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight: $weight kg'),
              Slider(
                value: weight.toDouble(),
                min: 30,
                max: 150,
                onChanged: (double newWeight) {
                  setState(() {
                    weight = newWeight.round();
                  });
                },
              ),
            ],
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Height: $height cm'),
              Slider(
                value: height.toDouble(),
                min: 100,
                max: 250,
                onChanged: (double newHeight) {
                  setState(() {
                    height = newHeight.round();
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('age: $age years'),
              Slider(
                value: age.toDouble(),
                min: 0,
                max: 150,
                onChanged: (double newAge) {
                  setState(() {
                    age = newAge.round();
                  });
                },
              ),
            ],
            
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    gender: widget.gender,
                    weight: weight,
                    height: height,
                    age: age,
                  ),

                ),
              );
            },
            child: Text('Calculate BMI and BMR '),
          ),
        ],
      ),
    );
  }
}
