import 'package:flutter/material.dart'; 
import 'navigation_page.dart'; 
void main() { 
runApp(MyApp()); 
} 
class MyApp extends StatelessWidget { 
@override 
Widget build(BuildContext context) { 
return MaterialApp( 
debugShowCheckedModeBanner: false, 
home: NavigationPage(), 
); 
} 
} 