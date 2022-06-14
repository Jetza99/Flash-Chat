import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({required this.btnColor, required this.btnText, required this.onPressed});

  final Color btnColor;
  final String btnText;
  final Function() onPressed;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnText,
          ),
        ),
      ),
    );
  }
}
