import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practical 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Vivek',style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 30
                ),),
                Text('Kumar', style: TextStyle(
                  color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  fontSize: 30
                ),),
                Text('Sharma', style: TextStyle(
                  color: Colors.pink,
                    fontWeight: FontWeight.w600,
                  fontSize: 30
                ),),

              ],
            ),
            SizedBox(height: 30),
            RichText(text: TextSpan(
                text: 'Vivek ', style: TextStyle(
                color: Colors.yellow,
                fontSize: 50,
                fontWeight: FontWeight.w700
            ),
                children: [
                  TextSpan(
                      text: 'sharma',style: TextStyle(
                      color: Colors.orange
                  )
                  )
                ]
            )),
          ],
        ),
      ),
    );
  }
}