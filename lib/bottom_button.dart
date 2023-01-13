import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    // @required this.route,
    @required this.onPressed,
    @required this.title,
  }) : super(key: key);

  // final String route;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(title, 
            style: TextStyle(
              color: Colors.white
            ),
          ), 
        ),
        color: Colors.red,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 50,
      )
    );
  }
}