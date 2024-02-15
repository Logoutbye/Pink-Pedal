import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Routes/routes_name.dart';
import 'package:liveproject/utilis/constant/assetpath.dart';



class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), ()=>Navigator.pushNamed(context, RoutesName.onBoarding));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
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
                      AssetPaths.splashimage,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              color: const Color(0xFF0f0f0f),
            ),
          ],
        ),
      ),
    );
  }
}
