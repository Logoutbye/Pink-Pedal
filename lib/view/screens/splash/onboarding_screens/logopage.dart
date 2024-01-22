import 'dart:async';

import 'package:flutter/material.dart';

import 'package:liveproject/view/screens/splash/onboarding_screens/firstscreen.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () { 
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> FirstOnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ Color(0xFF03008B), Color(0xFF0f0f0f)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return Center(
                    child: Image.asset(
                      'assets/images/smart cub logo 1.png',
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              color: Color(0xFF0f0f0f),
            ),
          ],
        ),
      ),
    );
  }
}
