import 'package:flutter/material.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class PickupDetailD extends StatefulWidget {
  const PickupDetailD({Key? key}) : super(key: key);

  @override
  State<PickupDetailD> createState() => _PickupDetailDState();
}

class _PickupDetailDState extends State<PickupDetailD> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Themecolor.container,
            height: height * 0.5,
          ),
          Container(
            height: height*0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white, // Added color to see the container
              border: Border.all(
                color: Colors.black, // Add border color
                width: 1, // Add border width
              ),
            ),
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
