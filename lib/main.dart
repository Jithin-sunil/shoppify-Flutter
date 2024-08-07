import 'package:flutter/material.dart';
import 'package:shoppify/homescreen.dart';
import 'package:shoppify/splashscreen.dart';

void main() {
  
  runApp(Shoppify());
}

class Shoppify extends StatelessWidget {
  const Shoppify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primaryColor: Color.fromARGB(255, 223, 22, 22)
      ),
      home: Splashscreen()
    );
  
  }
}  