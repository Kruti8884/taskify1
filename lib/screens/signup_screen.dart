import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text("Welcome!", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "User Name"),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.black,
              ),
              child: Text("Sign Up"),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: Text("Already have an account?", style: TextStyle(color: Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
