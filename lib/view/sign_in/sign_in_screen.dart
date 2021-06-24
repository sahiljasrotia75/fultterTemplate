import 'package:dummy_getx/view/sign_in/components/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign In"),
        ),
        body: SignInBody()
    );
  }
}
