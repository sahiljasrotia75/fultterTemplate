import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF5252);
const kPrimaryDarkColor = Color(0xFFFF7646);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);



class DefaultButton extends StatelessWidget {
  const DefaultButton({Key key, this.text, this.press}):super(key: key);

  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.0,
      child: FlatButton(
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}