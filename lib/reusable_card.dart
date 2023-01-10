import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  
  const ReusableCard({
    Key key, 
    this.width,
    this.colour,
    this.cardChild
  }) : super(key: key);
  final Color colour;
  final double width;
  final Widget cardChild;

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
      child: cardChild ,
    );
  }
}

