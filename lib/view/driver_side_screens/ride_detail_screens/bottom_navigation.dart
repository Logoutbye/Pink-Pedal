import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/theme_text.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';
class TodayAppurtunities extends StatefulWidget {
  const TodayAppurtunities({super.key});

  @override
  State<TodayAppurtunities> createState() => _TodayAppurtunitiesState();
}

class _TodayAppurtunitiesState extends State<TodayAppurtunities> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.teal,
            width: double.infinity,
            height: height*0.7,
          ),
          Container(
            decoration: BoxDecoration(
              color: Themecolor.container2,
                border:const Border(
              bottom: BorderSide(
                color: Themecolor.border, // You can set the color here
                width: 1.0, // Adjust the width as needed
              ),
            ),
              boxShadow: [
               BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 20,
                        spreadRadius: 1,
                           offset: Offset(0, 2),)
              ]
            ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.keyboard_arrow_down_sharp,size: 30,),
                Text('You are Online Now',style: Themetext.atextstyle,),
                Icon(Icons.toggle_off_outlined,size: 30,)
              ],
            ),
          ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA)
              ),
              child:     Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
           CircleAvatar(
            maxRadius: 30,
            backgroundColor: Themecolor.container,
            child: Icon(Icons.arrow_upward_sharp,color: Themecolor.container2,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Text('Today’s opportunities',style: Theme.of(context).textTheme.bodySmall,),
                Text('Top ways to earn More',style: Themetext.atextstyle,)
              ],
            )
            ],
          ),
            ),
          ),
      
        ],
      ),
      
    );
  }
}