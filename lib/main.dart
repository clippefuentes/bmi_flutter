import 'package:flutter/material.dart';
import './input_page.dart';
import './results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 41, 40, 40),
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.red),
        scaffoldBackgroundColor: Color.fromARGB(255, 34, 34, 34),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.red
          ),
          bodyText2: TextStyle(
            color: Color.fromARGB(255, 181, 124, 120)
          ),
        )
      ),
    );
  }
}
