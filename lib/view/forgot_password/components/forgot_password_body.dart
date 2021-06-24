
import 'package:dummy_getx/view/forgot_password/components/forgot_password_form.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it will provide us total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.02),
                Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                    "Please enter your email and we will send \nyou a link to return to your account"),
                SizedBox(height: size.height * 0.1),
                ForgotPassForm(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}