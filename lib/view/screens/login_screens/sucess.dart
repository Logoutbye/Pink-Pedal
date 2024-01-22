import 'dart:ui';

import 'package:flutter/material.dart';

class Sucesss_screem extends StatefulWidget {
  const Sucesss_screem({Key? key}) : super(key: key);

  @override
  State<Sucesss_screem> createState() => _Sucesss_screemState();
}

class _Sucesss_screemState extends State<Sucesss_screem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sucessful.jpeg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color(0xFF1717253D),
                BlendMode.darken,
              ),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor:  Color(0xFF1717253D),
            leading: Icon(Icons.arrow_back),
          ),
          backgroundColor:
              Colors.transparent, // Make the scaffold background transparent
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/illusterate.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height *0.2,
                  ),
                
                  Text(
                    'Success',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    children: [
                      Text(
                        'Your password is successfully created',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
