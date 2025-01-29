import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(   
      appBar: AppBar(  
        title: Text("sharma ji"),
        
      ),
      body:Center(
        child: Container(
        width: 400,
        height: 400,
        color: Colors.orange,
        child:Text("vivek sharma", style: TextStyle(color: Colors.blue ,fontSize: 30,),textAlign: TextAlign.center),
      ),
      )
      
    ),
  ));
}
