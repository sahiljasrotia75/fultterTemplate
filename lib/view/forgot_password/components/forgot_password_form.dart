

import 'package:dummy_getx/constant.dart';
import 'package:dummy_getx/view/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassForm extends StatelessWidget {
  const ForgotPassForm({Key key, @required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              labelText: "Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
              EdgeInsets.symmetric(horizontal: 42.0, vertical: 20.0),
              suffixIcon: Icon(
                Icons.email_outlined,
                color: kTextColor,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.0),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10.0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.0),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10.0),
            ),
          ),
          SizedBox(height: size.height * 0.2),
          DefaultButton(
            text: "Continue",
            press: () {
              Get.to(SignInScreen());
             // Navigator.push(context, MaterialPageRoute(builder: (context){return LoginSuccess();}));
            },
          ),
          SizedBox(height: size.height * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 18.0, color: kPrimaryColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}