import 'package:dummy_getx/view/forgot_password/components/forgot_password_body.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: ForgotPasswordBody(),
    );
  }
}