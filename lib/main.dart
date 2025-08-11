import 'package:flutter/material.dart';
import 'package:my_todo/screens/auth/forgot_password.dart';
import 'package:my_todo/screens/auth/sign_in.dart';
import 'package:my_todo/screens/auth/verify_forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        "/": (context) => VerifyForgotPasswordScreen(),
        "/sign-in": (context) => SignIn(),
        "/forgot-password": (context) => ForgotPasswordScreen(),
        "/verify-forgot-password": (context) => VerifyForgotPasswordScreen(),
        "/reset-password": (context) => ForgotPasswordScreen(),
      },
    );
  }
}
