import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final displayName = user?.displayName;
    final welcomeMessage = displayName != null && displayName.isNotEmpty
        ? "Welcome, $displayName!"
        : "Welcome!";

    return Scaffold(
      appBar: AppBar(
        title: Text("Taskify Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // The AuthWrapper will handle navigation to the login screen
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "$welcomeMessage\nYou are logged in as:\n${user?.email ?? 'No email'}",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}