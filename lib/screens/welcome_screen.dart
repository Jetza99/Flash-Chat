import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(seconds: 1), vsync: this, upperBound: 100.0);
    controller?.forward();
    controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller?.value,
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [TypewriterAnimatedText('Flash Chat', speed: Duration(milliseconds: 300),)],
                    repeatForever: true,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Button(btnColor: Colors.lightBlueAccent, btnText: 'Log In', onPressed: (){Navigator.pushNamed(context, '/log-in');},),
            Button(btnColor: Colors.blue, btnText: 'Register', onPressed: (){Navigator.pushNamed(context, '/register');},),
          ],
        ),
      ),
    );
  }
}

