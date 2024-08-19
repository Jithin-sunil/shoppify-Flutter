import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Signupform extends StatefulWidget {
  const Signupform({super.key});

  @override
  State<Signupform> createState() => _SignupformState();
}

class _SignupformState extends State<Signupform> {
 String? seldist;
 List<String> district=['Ernakulam','Kollam','Kottayam'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                icon: Icon(Icons.person),
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Email',
                hintText: 'Enter your email',
                 
              ),
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                icon: Icon(Icons.place),
                labelText: 'Address',
                hintText: 'Enter your Address',
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Password',
                hintText: 'Enter your Password',
                 
              ),
              obscureText: true,
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(items: district.map((String dis)
              {
                return DropdownMenuItem<String>(
                  value: dis,
                  child: Text(dis),
                );
              }
              ).toList(), onChanged: (String? newVal) {
                setState(() {
                  seldist = newVal;
                });
              },
              decoration: InputDecoration(
                icon: Icon(Icons.location_on_outlined),
                hintText: "Select Place",
                labelText: "Place",
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Submit'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Reset'),
            ),
          )
           
        ],
      ),
    );
  }
}