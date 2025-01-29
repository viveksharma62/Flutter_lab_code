import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.teal, fontSize: 18),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello World App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade100, Colors.teal.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.black45,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
