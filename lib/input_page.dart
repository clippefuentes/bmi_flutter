
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
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
              ))
            ],
          )),
          Expanded(child: Expanded(
            child: ReusableCard(
              colour: Color.fromARGB(255, 48, 47, 47),
            )
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
              ))
            ],
          )),
        ],
        
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  
  const ReusableCard({Key key, this.width, this.colour}) : super(key: key);
  final Color colour;
  final double width;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 200.00,
      width: this.width,
      decoration: BoxDecoration(
        color: this.colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}