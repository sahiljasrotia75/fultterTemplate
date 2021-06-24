import 'package:dummy_getx/constant.dart';
import 'package:dummy_getx/view/forgot_password/forgot_password_screen.dart';
import 'package:dummy_getx/view/shopping_page.dart';
import 'package:dummy_getx/view/sign_in/components/socail_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key, @required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Expanded(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.1),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (!GetUtils.isEmail(value))
                  return "Email is not valid";
                else
                  return null;
              },
              decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: "Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 42.0, vertical: 20.0),
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
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 42.0, vertical: 20.0),
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: kTextColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10.0),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10.0)),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text("Remember me"),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(ForgotScreen());
                    /* Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ForgotScreen();
                        }));*/
                  },
                  child: Text("Forgot Password"),
                )
              ],
            ),
            SizedBox(height: size.height * 0.1),
            DefaultButton(
              text: "Continue",
              press: () {
                Get.to(ShoppingPage());
              },
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  press: () {},
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                SocalCard(
                  press: () {},
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                SocalCard(
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: size.height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16.0),
                ),
                InkWell(
                  onTap: () {
                    Get.to(ShoppingPage());
                    /* Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ShoppingPage();
                        }));*/
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18.0, color: kPrimaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
