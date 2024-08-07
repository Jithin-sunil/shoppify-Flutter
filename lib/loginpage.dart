import 'package:flutter/material.dart';
import 'package:shoppify/signupform.dart';
import 'package:shoppify/user/dashboard.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Card(
            surfaceTintColor: Color.fromARGB(255, 243, 21, 21),
            shadowColor: const Color.fromARGB(255, 37, 27, 12),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(Icons.email),
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    child: Text('Login'),
                    
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signupform()));
                  }, child: Text("SignUp"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
