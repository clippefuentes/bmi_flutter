
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                height: 200.00,
                width: 170.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 47, 47),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                height: 200.00,
                width: 170.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 47, 47),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ))
            ],
          )),
          Expanded(child: Expanded(child: Container(
            margin: EdgeInsets.all(15.0),
            height: 200.00,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 48, 47, 47),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ))),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                height: 200.00,
                width: 170.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 47, 47),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                height: 200.00,
                width: 170.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 47, 47),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ))
            ],
          )),
        ],
        
      ),
    );
  }
}

