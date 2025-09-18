import 'package:flutter/material.dart';
import 'screens/onboarding1.dart';
import 'screens/onboarding2.dart';
import 'screens/onboarding3.dart';
import 'screens/signup_screen.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_screen.dart';

void main() {
  runApp(TaskifyApp());
}

class TaskifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/onboarding1': (context) => OnboardingScreen1(),
        '/onboarding2': (context) => OnboardingScreen2(),
        '/signup': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/forgot': (context) => ForgotPasswordScreen(),
      },
    );
  }
}
