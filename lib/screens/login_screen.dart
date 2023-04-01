import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './register_screen.dart';
import './otp_screen.dart';
import '../providers/auth.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("LOGIN SCREEN"),
      ),
    );
  }
}
