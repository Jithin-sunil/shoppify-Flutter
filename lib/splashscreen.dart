import 'package:flutter/material.dart';
import 'package:shoppify/loginpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

   @override
  void initState() {
    super.initState();
    gotoLogin();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: 
      Icon(Icons.shopping_cart,
      size: 100,
      color: Colors.red,)
      )
     
    );
  }
void gotoLogin() {
  Future.delayed(Duration(seconds: 2), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage()));
  });
 
}
  
}