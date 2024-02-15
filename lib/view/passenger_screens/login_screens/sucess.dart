import 'dart:ui';

import 'package:flutter/material.dart';

class SucesssScreen extends StatefulWidget {
  const SucesssScreen({Key? key}) : super(key: key);

  @override
  State<SucesssScreen> createState() => _SucesssScreenState();
}

class _SucesssScreenState extends State<SucesssScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sucessful.jpeg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color(0xff1717253d),
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
            backgroundColor:  const Color(0xff1717253d),
            leading: const Icon(Icons.arrow_back),
          ),
          backgroundColor:
              Colors.transparent, // Make the scaffold background transparent
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
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
                  const SizedBox(
                    height: 15,
                  ),
                  const Wrap(
                    children: [
                      Text(
                        'Your password is successfully created',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
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
