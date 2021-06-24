
import 'package:dummy_getx/view/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    //it will provide us total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Sign in with your email and password \nor continue with socail media",
                textAlign: TextAlign.center,
              ),
              SignInForm(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
