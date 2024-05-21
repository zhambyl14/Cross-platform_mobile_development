import 'package:flutter/material.dart';
import 'package:namer_app/login.dart';
import 'signup.dart';
import 'main.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 1.0),
              child: Image.asset(
                'assets/imglogo.png',
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                'Puzzle\nEscape',
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
              ),
            ),
           Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: SizedBox(
                width: 200,
                height: 50.0, // Set desired height here
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: SizedBox(
                width: 200,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: SizedBox(
                width: 200,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage(username: 'Guest',)),
                    );
                  },
                  child: Text('Guest', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
