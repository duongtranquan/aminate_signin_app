import 'package:aminate_signin_app/login_screen.dart';
import 'package:aminate_signin_app/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLogin = true;

  void toggleAuth() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(microseconds: 500),
      child: showLogin
          ? LoginScreen(key: const ValueKey('login'), onSignupTap: toggleAuth)
          : SignupScreen(key: const ValueKey('signup'), onLoginTap: toggleAuth),
    );
  }
}
