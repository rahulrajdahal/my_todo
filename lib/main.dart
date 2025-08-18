import 'package:flutter/material.dart';
import 'package:my_todo/screens/about_app.dart';
import 'package:my_todo/screens/auth/account_details.dart';
import 'package:my_todo/screens/auth/forgot_password.dart';
import 'package:my_todo/screens/auth/google_login_success.dart';
import 'package:my_todo/screens/auth/reset_password.dart';
import 'package:my_todo/screens/auth/reset_password_success.dart';
import 'package:my_todo/screens/auth/sign_in.dart';
import 'package:my_todo/screens/auth/sign_up.dart';
import 'package:my_todo/screens/auth/verify_forgot_password.dart';
import 'package:my_todo/screens/main_feed.dart';
import 'package:my_todo/screens/onboarding/plan.dart';
import 'package:my_todo/screens/onboarding/templates.dart';
import 'package:my_todo/screens/profile/archive.dart';
import 'package:my_todo/screens/profile/help_center.dart';
import 'package:my_todo/screens/profile/notification_settings.dart';
import 'package:my_todo/screens/profile/profile.dart';

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
        "/": (context) => HelpCenterScreen(),
        "/sign-in": (context) => SignIn(),
        "/forgot-password": (context) => ForgotPasswordScreen(),
        "/verify-forgot-password": (context) => VerifyForgotPasswordScreen(),
        "/reset-password": (context) => ResetPasswordScreen(),
        "/reset-password-success": (context) => ResetPasswordSuccessScreen(),
        "/sign-up": (context) => SignUpScreen(),
        "/account-details": (context) => AccountDetailsScreen(),
        "/google-login-success": (context) => GoogleLoginSuccessScreen(),
        "/onboarding-plan": (context) => OnboardPlanScreen(),
        "/onboarding-templates": (context) => OnboardTemplatesScreen(),
        "/main-feed": (context) => MainFeedScreen(),
        "/about": (context) => AboutAppScreen(),
        "/profile": (context) => ProfileScreen(),
        "/archive": (context) => ArchiveScreen(),
        "/notification-settings": (context) => NotificationSettingsScreen(),
        "/help-center": (context) => HelpCenterScreen(),
      },
    );
  }
}
