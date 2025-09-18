import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Icon(Icons.check_circle_outline, size: 100, color: Colors.black),
            SizedBox(height: 20),
            Text(
              "Welcome to Taskify",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Empowering you to organize, prioritize, and achieve more effortlessly.",
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding1');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.black,
              ),
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
